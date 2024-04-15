rm=(list())
#install.packages("wooldridge")
library(wooldridge)
data('hprice1')

model <- lm(price ~ bdrms, data = hprice1)

#finishing the sentance
summary_output <- summary(model)
bedroom_coefficient <- summary_output$coefficients[2,1]
cat(sprintf("for the average home in this dataset, we can reasonably expect that if you added an extra bedroom you would increase the expected selling price by $%.2f", bedroom_coefficient))

#NAZ EDIT
#the output when ran was: "for the average home in this dataset, we can reasonably expect that if you added an extra bedroom you would increase the expected selling price by $62.02"
