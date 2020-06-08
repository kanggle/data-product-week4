Data Products
========================================================
author: kanggle
date: 08/06/2020
autosize: true

First Slide
========================================================
This presentation is a part of Data Products Course week 4 project.

The application demo built by Shiny and can be found at the URL: https://kanggle.shinyapps.io/data-products-week4-master/

Source code and presentation - GitHub URL: 
https://github.com/kanggle/data-product-week4

Slide With Code
========================================================

I have taken mtcars data set for our analysis.

```{r}
head(mtcars)
summary(mtcars)
```

Plotting
========================================================

```{r echo=FALSE}
data("mtcars")
  mtcarsCal<- mpg ~ cyl
  mtcars.lm <- lm(formula=mtcarsCal, data=mtcars)
     
# draw the scatter diagram with the specified value of mpg
  plot(mtcarsCal, data=mtcars, main="Linear Regression analysis for mtCars")
  abline(mtcars.lm,col="yellow")
    
```

Plotting
========================================================
Thanks for you!