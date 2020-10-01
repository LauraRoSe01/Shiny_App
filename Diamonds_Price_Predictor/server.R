library(shiny)
library(miniUI)
library(ggplot2)

#get data
data("diamonds")

# stablish linear model for predictions 
model <- lm(formula = price ~ carat + cut + clarity , data = diamonds)

shinyServer(function(input, output, session) {
    
    output$prediction<- renderText({
        df <- data.frame(carat=input$sliderCarat,
                         cut=factor(input$CutInput, levels = levels(diamonds$cut)),
                         clarity=factor(input$ClarityInput, levels = levels(diamonds$clarity)))
        
        ch <- predict(model, newdata=df)
        
    })
})
