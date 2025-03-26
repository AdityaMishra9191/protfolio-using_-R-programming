# Load Shiny library
library(shiny)

# Define UI (Frontend)
ui <- fluidPage(
  # Colorful Background
  tags$head(
    tags$style(HTML("
      body { background-color: #1e1e2e; color: white; font-family: Arial, sans-serif; }
      h1 { color: #ffcc00; text-align: center; }
      .box { background: #292b2c; padding: 20px; border-radius: 10px; margin: 10px; box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.3); }
      a { color: #00c3ff; text-decoration: none; font-weight: bold; }
    "))
  ),
  
  titlePanel("Aditya Kumar Mishra - Portfolio"),
  
  sidebarLayout(
    sidebarPanel(
      img(src = "https://via.placeholder.com/150", height = "150px", width = "150px", style = "border-radius: 50%;"),
      h3("Data Science Enthusiast"),
      p("B.Tech 3rd Year, NIET Greater Noida"),
      p("Passionate about AI, ML & Data Science"),
      br(),
      h4("Contact Me:"),
      p("📧 Email: aditya@example.com"),
      p("🔗 LinkedIn: ", a("Click Here", href="https://linkedin.com/in/aditya", target="_blank")),
      p("🐦 Twitter: ", a("Click Here", href="https://twitter.com/aditya", target="_blank"))
    ),
    
    mainPanel(
      div(class="box",
          h2("About Me"),
          p("Hello! I am Aditya Kumar Mishra, a passionate Data Scientist with expertise in Machine Learning, Deep Learning, and Big Data Analytics. Currently pursuing B.Tech in Computer Science at NIET Greater Noida.")
      ),
      
      div(class="box",
          h2("Skills"),
          tags$ul(
            tags$li("✔ Machine Learning"),
            tags$li("✔ Deep Learning"),
            tags$li("✔ Data Analysis"),
            tags$li("✔ R Programming"),
            tags$li("✔ Python & SQL"),
            tags$li("✔ Power BI & Tableau")
          )
      ),
      
      div(class="box",
          h2("Projects"),
          p("1️⃣ Predictive Model for Stock Market using ML"),
          p("2️⃣ Hand Gesture Recognition using CNN"),
          p("3️⃣ Customer Segmentation using K-Means Clustering")
      )
    )
  )
)

# Define Server (Backend)
server <- function(input, output) {}

# Run the application 
shinyApp(ui = ui, server = server)
