library(shiny)
library(plotly)

shinyUI(navbarPage('Sepal information',
        tabPanel('Histogram',
        titlePanel('Sepal length'),
        sidebarLayout(
          sidebarPanel(selectInput("length", label = h3("Choose Length"), 
                                   choices = list("Sepal length" = 'Sepal.Length', "Petal length" = 'Sepal.Length'), 
                                   selected = 'Sepal.Length')),
        mainPanel(
          plotlyOutput('histogram')
        )
    ),
    tabPanel('Scatter',
             titlePanel('Length'),
             sidebarLayout(
               sidebarPanel(
                 selectInput("xvar", label = h2("X Variable"), 
                             choices = list("Sepal length" = 'Sepal.Length', "Petal length" = 'Sepal.Length'),
                             selected = 'Sepal.Length'), 
                 
                 selectInput("yvar", label = h3("Y Variable"), 
                             choices = list("Sepal length" = 'Sepal.Length', "Petal length" = 'Sepal.Length'), 
                             selected = 'Sepal.Length'))
               ), 
                 textInput('search', label="Find a length", value = ''),
                 mainPanel(
                   plotlyOutput('scatter')
               )
)
  )
           )
        )
