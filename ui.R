library(shiny)

shinyUI(fluidPage(
  titlePanel("mtCars Data - Regression analysis"),
  sidebarLayout(
    sidebarPanel(
      selectInput("vcar", "The first variable",
                  choices = c("Miles per Gallon" = "mpg",
                              "Horse Power" = "hp"),
                  selected = "mpg"),
      
      selectInput("tcar", "Second variable",
                  choices = c("Automatic Transmission" = "am",
                              "Manual Transmission" = "gear",
                              "Cylinders" = "cyl"),
                  selected = "am"),
      
      checkboxInput("Abline", "Draw Abline", TRUE),
      submitButton('Submit')
      
    ),
    
    mainPanel(
      h4('Selected first variable (mpg/hp)'),
      verbatimTextOutput("vc"),
      h4('Selected second variable (am/gear/cyl)'),
      verbatimTextOutput("tc"),
      tags$br(),
      h3('Linear Regression analysis for mtCars'),
      plotOutput("distPlot")
    )
  )
))