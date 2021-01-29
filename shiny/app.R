library(shiny)

# Define UI for application 
ui = shiny::htmlTemplate(
  
  # Index Page
  "www/index.html",
  totalProfitNote = 2674862,
  activeUsersNote = 6750,
  newOrdersNote = 245,
  openComplaintsNote = 120
)

# Define server logic 
server <- function(input, output) {
  
}

# Run the application 
shinyApp(ui = ui, server = server)

