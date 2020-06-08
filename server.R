library(shiny)

shinyServer(function(input, output) {
  
  output$vc <- renderPrint({input$vcar})
  output$tc <- renderPrint({input$tcar})
  
  output$distPlot <- renderPlot({
    mtcarsCal <- mtcars[,input$vcar] ~ mtcars[,input$tcar]
    mtcars.lm <- lm(formula=mtcarsCal, data=mtcars)
    plot(mtcarsCal, data=mtcars, xlab = input$vcar, ylab = input$tcar)
    if (input$Abline){abline(mtcars.lm,col="blue")}
    
  })
  
})