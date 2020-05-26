## Libraries
library(shiny)
library(ggplot2)

## Modeling Function with data
source('Next_word_Function_03.R')

# Define server logic required to draw a histogram
shinyServer(function(input, output,session) {
    ## Stored outputs of the "nextword function":
    
    ### Entire output for the plot:
    candidates<-reactive(nextword(input$term_input))
    
    ### Sliced output for the UI buttons:
    
    #### Clear Button
    observeEvent(input$buttonC, {
        updateTextInput(session, "term_input",  value = "")
    })
    
    #### First Button (Best prediction choice):
    candidate_1 <- reactive(nextword(input$term_input)[1,1])
    output$candidate_out1 <- candidate_1
    #### If the button 1 is use, the text input gets updated with that word
    observeEvent(input$button1, { 
        updateTextInput(session, "term_input",
                        value = paste(input$term_input, candidate_1()))
    })
    
    #### Second Button (Second best prediction choice):
    candidate_2 <- reactive(nextword(input$term_input)[2,1])
    output$candidate_out2 <- candidate_2
    #### Updating input 2
    observeEvent(input$button2, { 
        updateTextInput(session, "term_input",
                        value = paste(input$term_input, candidate_2()))
    })
    
    #### Third Button (Third best prediction choice):
    candidate_3 <- reactive(nextword(input$term_input)[3,1])
    output$candidate_out3 <- candidate_3
    #### Updating input 3
    observeEvent(input$button3, { 
        updateTextInput(session, "term_input",
                        value = paste(input$term_input, candidate_3()))
    })
    
    
    ## Ploting the possibles outputs candidates 
    output$candidatesPlot <-renderPlot({
        df<-data.frame(word=candidates()[,1],prob=candidates()[,2])
        ggplot(df, aes(reorder(word, prob),prob)) +
            geom_bar(stat = "identity") +
            coord_flip() +
            xlab("Probability of the next word (%)") +
            ylab("Most likely next word") +
            theme(axis.text=element_text(size=15)) 
    })
})
