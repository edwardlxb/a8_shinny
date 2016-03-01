
build_hist<- function(df, column){
      plot_ly(df, z = eval(parse(text = column)))
  return()
}