library(shiny)
library(plotly)

shinyUI(bootstrapPage(
  
  selectInput(input = "n_breaks",
              choices = c(1,2,3,4,5,6,7,8,9,10),
              label = list("Sepal Length"),
              selected = 2),
  
  checkboxInput(input = "Sepal_length",
                label = strong("Show sepal length"),
                value = FALSE),
  
  checkboxInput(input = "density",
                label = strong("Show density estimate of Sepal length"),
                value = FALSE),
  
  plotOutput(outputId = "main_plot", width = "20%", height = "15cm"),
  
  conditionalPanel(condition = "input$density == true",
                   sliderInput(input = "bw_adjust",
                               label = "Bandwidth adjustment:",
                               min = 0.2, max = 2, value = 1, step = 0.2)
  )
  ))
  
