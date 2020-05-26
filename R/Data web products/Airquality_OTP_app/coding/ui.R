library(shiny)
library(plotly)
titlePanel("Ozone and Temperature predictor")

sidebarLayout(
  sidebarPanel(
    
  ),
  
  mainPanel(
    
    sliderInput("Solar slider BAR",
                "Solar Radiation value:",
                min = min(airquality[complete.cases(airquality),]$Solar.R) - 5,
                max = max(airquality[complete.cases(airquality),]$Solar.R) +5,
                value = 40),
    h3("OZONE ~ SOLAR RADIATION"),
    textOutput("pred1"),
    checkboxInput("showModel1", "Show/Hide Oz ~ Sol", value = TRUE),
    plotlyOutput("plot1", height = "300px", width = "100%"),
    verbatimTextOutput("hover_info"),
    h3("TEMPERATURE ~ SOLAR RADIATION"),
    textOutput("pred2"),
    checkboxInput("showModel2", "Show/Hide Temp ~ Sol", value = TRUE),
    plotlyOutput("plot2")
    
  )
)