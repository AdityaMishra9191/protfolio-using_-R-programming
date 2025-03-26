# Load Shiny library
library(shiny)

# Define UI (Frontend)
ui <- fluidPage(
  titlePanel("Welcome to My R Shiny Website"),
  
  sidebarLayout(
    sidebarPanel(
      textInput("name", "Enter your name:", ""),
      actionButton("go", "Submit")
    ),
    
    mainPanel(
      textOutput("greeting")
    )
  )
)

# Define Server (Backend)
server <- function(input, output) {
  observeEvent(input$go, {
    output$greeting <- renderText({
      isolate({ paste("Hello,", input$name, "! Welcome to R Shiny!") })
    })
  })
}

# Run the application 
shinyApp(ui = ui, server = server)
