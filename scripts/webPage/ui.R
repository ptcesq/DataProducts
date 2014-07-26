shinyUI(pageWithSidebar(
  headerPanel("Regression Line"),
    sidebarPanel(
      sliderInput('slope', 'Estimate the slope', value = 2, min = 2, max = 10, step = 0.0001,)
      ), 
      mainPanel(
        plotOutput('newPlot'),
              h4("Try to Estimate The Coefficient!"),
              h5("As you may know,  a regression line is just a line like any other line, but the slope tells us the rate at which the dependent variable (Stopping Distance) increases or decreases as the independent variable (Speed) increases or decreases.  As we all know, the formula for a line is “y = M*X +B”.  X is the independent variable, Y is the dependent variable, B is the point where the line intersects the X axis, and M is the slope.  In modeling it is call the “coefficient”.   X is the speed a vehicle was traveling when the measurement was taken and Y is the distance it took to stop the vehicle."),
              h5("The plot above is a scatter plot of stopping distances based on the speed of a vehicle.    We have already supplied you with the B variable, i.e. the X intercept.  The red line is an estimated regression line.  Using the Slider Bar above to the left, try to determine the slope, aka the coefficient, of the speed variable.  You acomplish this by trying to line up the red and blue lines.  The slope will tell you how many additional feet of space you will need to stop your car for each additional mile per hour (MPH)!")                
        )
  ))