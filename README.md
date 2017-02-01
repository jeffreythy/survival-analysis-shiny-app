# survival-analysis-shiny-app
A Shiny R App that performs Kaplan-Meier Survival analysis

The following is the link to this example:
 https://jeffreythy.shinyapps.io/kaplan-meier_shiny_r/
 
This is a simple example to illustrate how Shiny R can apply to Kaplan-Meier survival analysis.
 
The data was used in this example is the "tongue" data from the "OIsurv" library. In addition, two random sample columns were added to this data frame, gender and category. 
 
There are two main features in this Shiny app:

1) drop down list 
    - where you can select which features you want to observe

2) slider bar
    - where you can select a certain time point to observe
    - the survival probability of each class from the feature you choose will show in the table below the survival graph


The global, server, ui R code are included in this repository.
 
