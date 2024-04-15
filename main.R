rm=(list())
#install.packages("wooldridge")
library(wooldridge)

# 2. Load the dataset 'hprice1' by running data('hprice1')
data('hprice1')

# 3. Create a model to estimate the effect on price of adding a bedroom.
model <- lm(price ~ bdrms, data = hprice1)

# 4. Complete this sentence "for the average home in this dataset, we can reasonably expect that if you added an extra bedroom you would increase the expected selling price by $___"
summary_output <- summary(model)
bedroom_coefficient <- summary_output$coefficients[2,1]
cat(sprintf("for the average home in this dataset, we can reasonably expect that if you added an extra bedroom you would increase the expected selling price by $%.2f", bedroom_coefficient))

#NAZ EDIT
#the output when ran was: "for the average home in this dataset, we can reasonably expect that if you added an extra bedroom you would increase the expected selling price by $62.02"
