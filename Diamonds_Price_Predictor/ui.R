library(shiny)
library(miniUI)

shinyUI(fluidPage(
    titlePanel("Predict Diamond Price"),
    sidebarLayout(
        sidebarPanel(
            selectInput("ClarityInput", "Clarity", unique(diamonds$clarity), selected = NULL),
            sliderInput("sliderCarat", "Carat", 0.2, 5, value = 1),
            selectInput("CutInput", "Cut", c("Fair", "Good", "Very Good", "Premium", "Ideal", selected = NULL),
                        
            )),
        
        mainPanel(
            
            h4("Predicted Diamond price in US Dollars"),
            h4(textOutput("prediction"))
        )
    )))
