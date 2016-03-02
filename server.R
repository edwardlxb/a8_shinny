library(shiny)
library(plotly)
library(dplyr)

data<- iris


shinyServer(function(input, output) {
  
  output$main_plot <- renderPlot({
    
    hist(data$Sepal.Length,
         probability = TRUE,
         breaks = as.numeric(input$n_breaks),
         col = c("red", "yellow", "green", "violet", "orange", 
                            "blue", "pink", "cyan"),
         xlab = "Sepal Length",
         main = "Iris dataset")
    
    if (input$Sepal_length) {
      rug(data$Sepal.Length)
    }
    
    if (input$density) {
      dens <- density(data$Sepal.Length,
                      adjust = input$bw_adjust)
      lines(dens, col = "blue")
    }
    
  })
})

  
  
  
  
