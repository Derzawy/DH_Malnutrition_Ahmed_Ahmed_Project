library(shiny)

shinyUI(fluidPage(
  titlePanel("Malnutrition Estimates in children In Arabic Countries 1983-2019"),
  sidebarLayout(
    sidebarPanel(
      # Input: Select variable to plot
      selectInput("variable", "Malnutriton Type:",
                  choices = c("Underweight", "Stunting", "Overweight", "Wasting", "Severe_Wasting")),
    ),
    mainPanel(
      plotOutput("bar_chart")
    )
  )
))

      


