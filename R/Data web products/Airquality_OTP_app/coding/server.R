library(shiny)
library(plotly)
library(grid)
library(gridExtra)
library(ggplot2)
data("airquality")

shinyServer(function(input, output) {
  modelo1 <- lm(Ozone ~ Solar.R, data = airquality)
  modelo2 <- lm(Temp ~ Solar.R, data = airquality)
  
  model1pred <- reactive({
    SolarInput <- input$SliderSolar
    
    predict(modelo1, newdata = data.frame(Solar.R = SolarInput))
    
  })
  output$pred1 <- renderText({
    model1pred()
  })
  
  output$plot1 <- renderPlotly({
    SolarInput <- input$SliderSolar
    minS = min(airquality[complete.cases(airquality),]$Solar.R) - 5
    maxS = max(airquality[complete.cases(airquality),]$Solar.R) +5
    minO = min(airquality[complete.cases(airquality),]$Ozone) - 5
    maxO = max(airquality[complete.cases(airquality),]$Ozone) +5
    
    g <- ggplot(airquality, aes(   y = airquality$Ozone, x = airquality$Solar.R),
                xlim = c(minS, maxS), ylim = c(minO, maxO)) + geom_point()
    if(input$showModel1){
      
      g <- g + stat_smooth(method = 'lm', color = "red", lwd = 1)
    }
    g <- g+ ggtitle("Predicting daily mean ozone with Solar Radiation")
    g <- g + geom_point(x = SolarInput, y = model1pred(), col = "Blue")
    g<- g +labs(x = "Solar Radiation" , y= "Mean ozone (parts per billion)")
    ggplotly(g) 
  })
  model2pred <- reactive({
    SolarInput <- input$SliderSolar
    predict(modelo2, newdata = data.frame(Solar.R = SolarInput))
  })
  output$pred2 <- renderText({
    model2pred()
  })
  output$plot2 <- renderPlotly({
    SolarInput <- input$SliderSolar
    minT = min(airquality[complete.cases(airquality),]$Temp) - 5
    maxT = max(airquality[complete.cases(airquality),]$Temp) +5
    minS = min(airquality[complete.cases(airquality),]$Solar.R) - 5
    maxS = max(airquality[complete.cases(airquality),]$Solar.R) +5
    
    g2 <- ggplot(airquality, aes(   y = airquality$Temp, x = airquality$Solar.R),
                 xlim = c(minS, maxS), ylim = c(minO, maxO)) + geom_point()
    if(input$showModel2){
      
      g2 <- g2 + stat_smooth(method = 'lm', color = "red", lwd = 1)
    }
    
    g2 <- g2+ ggtitle("Predicting Maximum daily temperature with Solar Radiation")
    g2 <- g2 + geom_point(x = SolarInput, y = model2pred(), position = "identity", col = "blue")
    g2<- g2 +labs(x = "Solar Radiation" , y= "Maximum daily temperature")
    ggplotly(g2)
  })
})