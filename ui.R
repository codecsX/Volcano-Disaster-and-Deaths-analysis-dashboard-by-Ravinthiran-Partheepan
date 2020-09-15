

library(shiny)
library(shinythemes)



shinyUI(fluidPage(theme = shinytheme("slate"),
    
    h1("Volcano Disaster and Deaths analysis dashboard", style="color:silver", Position="center"),
    p("Application developed by Ravinthiran Partheepan", style = "color:grey"),
    em("Application Developed Date : 16/09/2020", style="color: grey"),
    
    br(),
    br(),
    

    
    titlePanel("Volcano Disaster Data"),


    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Choose the Year:",
                        min = 15,
                        max = 20,
                        value = 17)
        ),
        
        

        
        mainPanel(
            plotOutput("distPlot")
        )
    )
))
