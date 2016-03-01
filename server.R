library(shiny)
library(plotly)
library(dplyr)
setwd("/Users/Edward/Documents/INFO_a8")
source('build_scatter.R')
source('build_hist.R')
data<- iris
shinyServer(function(input, output){
  output$histogram <- renderPlotly({ 
    build_hist(data, input$length)  
  })
  output$scatter<- renderPlotly({ 
    build_scatter(data, input$xvar, input$yvar, input$search)  
  })
})
  
  
  
  
  
