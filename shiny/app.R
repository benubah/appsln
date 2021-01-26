library(shiny)

# Define UI for application 
ui = shiny::htmlTemplate(
  # Index Page
  "www/index.html",
  totalProfitNote = htmlOutput(outputId ="total_profit", inline = T),
  activeUsersNote = htmlOutput(outputId ="active_users", inline = T),
  newOrdersNote = htmlOutput(outputId ="new_orders", inline = T),
  openComplaintsNote = htmlOutput(outputId ="open_complaints", inline = T)
)

# Define server logic required to draw a histogram
server <- function(input, output) {
   
  output$total_profit <- renderText({
    # calculate total profit
    profit <- 2674862
    total <- HTML(profit)
  })
  
  output$active_users <- renderText({
    # obtain active users
    activeUsers <- 6750
    total <- HTML(activeUsers)
  })
  
  output$new_orders <- renderText({
    # obtain count of new orders
    newOrders <- 245
    total <- HTML(newOrders)
  })
  
  output$open_complaints <- renderText({
    # calculate total profit
    openComplaints <- 120
    total <- HTML(openComplaints)
  })
  
}

# Run the application 
shinyApp(ui = ui, server = server)

