

library(shiny)

v <- c()

shinyServer(function(input, output) {

    output$distPlot <- renderPlot({

        
        volcanic_data    <- faithful[, 2]
        bins <- seq(min(volcanic_data), max(volcanic_data), length.out = input$bins + 1)

        
        hist(volcanic_data, xlab="Total_Deaths_on_Volcanic_Eruption", ylab="Year (Scale in terms 0 = 2010/ 10 = 2015/ 20 = 2020)",ylim=c(0,20), breaks = bins, col = 'grey', border = 'white')

    })

})
