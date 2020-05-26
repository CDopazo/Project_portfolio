library(shiny)
library(shinythemes)
# Define UI for application that draws a histogram
shinyUI(fluidPage(
    theme = shinytheme("cerulean"),
    # Page Title ($hr for horizontal rule)
    tags$hr(),
    titlePanel("Dopazo's Next Word Predictor"),
    tags$hr(),
    
    
    # Main panel 
    mainPanel(
        tabsetPanel(
        tabPanel("Prediction",
                 sidebarLayout(
                    sidebarPanel(
                         width = 3,
                         tags$p(""),
                         tags$h4("Predicted next word:"),
                         flowLayout(
                             actionButton("button1", label = textOutput("candidate_out1")),
                             actionButton("button2", label = textOutput("candidate_out2")),
                             actionButton("button3", label = textOutput("candidate_out3")),
                             "",
                             actionButton("buttonC",label = "Clear",icon = icon("refresh"))
                         )),
                    mainPanel(
            tags$h4("Input your text here:"),
            h4(tags$textarea(id = "term_input", rows = 5, cols = 40, "")),
        # Show a plot of the generated distribution
            h3("Most likely words plot"),
            plotOutput("candidatesPlot")
)
    )
        ),
        tabPanel("About",includeMarkdown('NW_README.Rmd')
                 )
            ))
                ))