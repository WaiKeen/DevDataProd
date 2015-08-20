library(shiny)

shinyServer(
    function(input, output) {
        output$tt <- renderPrint({input$tt})
        output$wt <- renderPrint({input$wt})
        output$qsec <- renderPrint({input$qsec})
                
        output$mpg <- renderPrint(9.618+as.numeric(input$tt)-3.917*input$wt/1000+1.226*input$qsec)
        
    }
)