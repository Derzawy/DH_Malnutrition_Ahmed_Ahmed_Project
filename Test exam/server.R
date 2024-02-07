library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
  
  # Sample dataset
  df <- data.frame(
    Country = c("ALGERIA", "BAHRAIN", "COMOROS (THE)", "DJIBOUTI", "EGYPT", "IRAQ", "JORDAN", "KUWAIT", "LEBANON", "LIBYA", "MAURITANIA", "MOROCCO", "OMAN", "QATAR", "SAUDI ARABIA", "SOMALIA", "STATE OF PALESTINE", "SUDAN (THE)", "SYRIAN ARAB REPUBLIC (THE)", "TUNISIA", "YEMEN"),
    Income_Classification = c(2, 3, 1, 1, 1, 2, 2, 3, 2, 2, 1, 1, 3, 3, 3, 0, 1, 1, 0, 1, 0),
    Severe_Wasting = c(2.733333333, NA, 5.4, 9.4, 2.4875, 2.175, 0.76, 0.628571429, 2.25, 3.233333333, 3.975, 1.95, 1.68, NA, 4.5, 4.35, 0.85, 4.766666667, 5.05, 1.1, 5.3),
    Wasting = c(5.942857143, 6.7, 10.125, 17.075, 5.79, 5.542857143, 2.58, 2.522222222, 5.1, 6.766666667, 13.41, 4.483333333, 7.783333333, 10.4, 7.35, 15.63333333, 3.583333333, 15.4, 9.566666667, 3.583333333, 15.24285714),
    Overweight = c(12.83333333, 13.75, 12.46666667, 8.25, 13.7625, 9.5, 5.72, 7.988888889, 18.75, 21.8, 2.6375, 10.86666667, 3.55, 11.6, 3.65, 3.85, 7.58, 2.9, 17.825, 9.08, 4.842857143),
    Stunting = c(19.57142857, 6.95, 39.125, 30.075, 28.5, 24.51428571, 11.76, 4.661111111, 16.85, 26.73333333, 34.17, 23.85, 16.06666667, 4.8, 15.35, 32.16666667, 11.55, 36.86666667, 28.55, 12.45, 51.9),
    Underweight = c(7.342857143, 63.371, 19.575, 22.625, 8.64, 8.5, 3.5, 2.353333333, 3.85, 7.166666667, 24.86666667, 6.916666667, 11.91666667, 50.012, 9.4, 26.03333333, 2.92, 29.93333333, 10.05, 3.65, 37.78571429),
    Population = c(3565.213143, 90.28775, 99.44525, 8911.539818, 4213.459714, 828.3772, 254.7628889, 436.8065, 621.9033333, 500.2949, 3310.867167, 332.156, 50.012, 2744.397, 2017.326333, 594.9526667, 5551.013, 2476.209333, 928.927, 3269.476, NA)
  )
  
  # Render the bar chart
  output$bar_chart <- renderPlot({
    ggplot(df, aes_string(x = input$variable, y ="Country", "Income_Classification" )) +
      geom_bar(stat = "identity", fill = "aquamarine", color = "red") +
      labs(title = "% of children aged 0–59 months ", x = input$variable, y = "Country")
  })
  
})
