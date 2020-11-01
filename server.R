library(shiny)
library(htmltools)
library(tidyr)
library(dplyr)


server <- function(input, output,session){
    
addResourcePath("www", "www")
 
 
   output$NC_E <- renderUI({
    tags$iframe(
      seamless="seamless",
      height = "500",
      width = "100%",
      src="www/NC-E.html")

  })
  
  output$NC_N <- renderUI({
    tags$iframe(
      seamless="seamless",
      height = "400",
      width = "100%",
      src="www/NC-Nb.html",
      scrolling = "no",
      frameborder="1")
    
  })

    output$dummy_N <- renderUI({  
    tags$iframe(
    seamless="seamless",
    height = "400",
    width = "100%",
    src="www/dummyN.html",
    scrolling = "no",
    frameborder="1")
  
})

  
  output$mech <- renderUI({
    tags$iframe(
      seamless="seamless",
      height = "500",
      width = "820",
      src="www/finalmechy.html",
      scrolling = 'no',
      frameborder="1")
    
  })
  
  output$CRP_E <- renderUI({
    tags$iframe(
      seamless="seamless",
      height = "500",
      width = "100%",
      src="www/CRP-E.html")
  })
  
  output$CRP_N <- renderUI({
    tags$iframe(
      seamless="seamless",
      height = "400",
      width = "100%",
      src="www/CRPNb.html",
      scrolling = "no",
      frameborder="1")
    
  })

  

}
