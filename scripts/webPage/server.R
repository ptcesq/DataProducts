require(stats)
require(graphics)
data(cars)
attach(cars)

shinyServer(
  function(input, output) {
    output$newPlot <- renderPlot({
      plot(cars, xlab="Speed (MPH)", ylab = "Stopping Distance (ft)", pch=19, col="blue")
      abline(lm(dist~speed), col="red") 
      x = seq(1:27) 
      intercept <- -17.57
      slope = input$slope
      y = slope * x + intercept 
      lines(x, y, col="blue")   
      text( 6, 110, paste("Slope = ", slope))
      text( 6, 103, paste("X Intercept = ", intercept))      
    })
  }
)