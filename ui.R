library(KMsurv)
library(survival)
library(shiny)
library(ggplot2)
library(plyr)

shinyUI(navbarPage("Survival Analysis",
                   tabPanel( "Kaplan-Meier Survival Graph",
  sidebarLayout(
    sidebarPanel(
      h3("Survivial Graph"),
      selectInput('sur_var', 'Factor of Survival', names(df)[names(df) != "time" & names(df) != "delta"]),
      sliderInput('xvalue', 'Survival Days = ',value=100, min=1, max=max(df$time))
      )
    ,
  mainPanel(
  h3(textOutput("caption")),plotOutput("plot1")
  , tableOutput("center")
    )
  )
)
))