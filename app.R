## app.R ##
library(shiny)
library(shinydashboard)

source(file = "global.R", local = TRUE)

source(file = "ui/ui_dashboard.R", local = TRUE)


ui <- dashboardPage(
    
    header,
    
    sidebar,
    
    body
    
    
    # dashboardHeader(title = "Basic Dashboard"),
    # dashboardSidebar(),
    # dashboardBody()
)



server <- function(input, output) { 
    
    source(file = "server/srv_dashboard.R", local = TRUE)
    
    }



# run app.R
shinyApp(ui, server)