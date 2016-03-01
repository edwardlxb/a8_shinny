data<- iris

build_scatter <- function(stat, xvar = 'Sepal.Length', yvar = 'Sepal.Width', search = '') {
  xmax<- max(data[, eval(parse(text = 'xvar'))])
  ymax<- max(data[,eval(parse(text = 'yvar'))])
  data%>%
    filter(grepl(search, Sepal.Length)) %>%
    plotly(x = eval(parse(text = xvar)),
           y = eval(parse(text = yvar)),
           mode = 'markers',
           marker = list(
             opacity = 0.4,
             size = 10
           )) %>%
    layout(xaxis = list(range = c(0, xmax), title = xvar), 
           yaxis = list(range = c(0, ymax), title = yvar)
    )%>%
    return()
}




