library(shiny)
library(plotly)
library(dplyr)

#install.packages('devtools')
#devtools::install_github('rstudio/rsconnect')
#rsconnect::setAccountInfo(name='info498-xinbo',
                         # token='66585C4EFA7085BBFD6252A087F4749D',
                        #  secret='7o3DcmNBW+mwOJMbUiBAWzJOQ5ReAcdE0hWlQm7z')
#library(rsconnect)
#rsconnect::deployApp('/Users/Edward/Documents/INFO_a8')

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

  
  
  
  
