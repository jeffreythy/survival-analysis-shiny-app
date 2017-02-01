library(KMsurv)
library(survival)
library(shiny)
library(ggplot2)
library(plyr)


shinyServer(function(input, output, session) {
  
  # Combine the selected variables into a new data frame
  selectedData <- reactive({
    df[, c(input$sur_var)]
  })
  
  # This is a caption that will show on top of the graph; the name will change based on which variable you choose
  output$caption <- renderText({
    paste("Survival Graph of", input$sur_var, sep="\n")
  })
  
  # Running the survival function
  runSur <- reactive({
    survfit(as.formula(paste("Surv(time,delta) ~ ",paste(input$sur_var))),data=df)
  })
 
  # Plot the survival graph
  output$plot1 <- renderPlot({
    
    plot(runSur(), 
         col=c("red","sky blue","green","purple","orange","yellow"), xlab="Days", ylab="S(t)")
    legend("bottomleft",cex=0.9,levels(selectedData()),fill= c("red","sky blue","green","purple","orange","yellow"))
    abline(v=input$xvalue,col=1,lty=2)
    })
  
  # This table will give you the probability of survival for each class at a given time
  output$center <- renderTable({
    as.data.frame(summary(runSur(), times=input$xvalue )[c("surv", "time", "strata")])
  })
  
  
})
