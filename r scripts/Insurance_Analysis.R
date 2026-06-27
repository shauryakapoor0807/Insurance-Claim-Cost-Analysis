######################################################################
# Insurance Claims Cost Analysis
# Author: Shaurya Kapoor
# Language: R 
# Objective: Predict insurance charges using regression analysis
#####################################################################



####################################################################
# 1. Loading required library and dataset
####################################################################
library(readr)
insurance <- read_csv("Data/insurance.csv")
insurance


###################################################################
# 2. Exploratory Data Analysis
##################################################################
head(insurance)
str(insurance)
summary(insurance)


#################################################################
# 3. Missing Value Check
#################################################################

colSums(is.na(insurance))


#################################################################
# 4. Data Visualization
#################################################################
hist(insurance$age,main="Distribution Of Age",xlab="Age",ylab="Frequency",col="blue",border="black")
hist(insurance$bmi,main="Distribution Of BMI",xlab="BMI",ylab="Frequency",col="green",border="black")
boxplot(charges~smoker,data=insurance,main="Insurance Charges by Smoking Status",xlab="Smoker",ylab="Insurance Charges",col=c("blue","green"))
plot(insurance$bmi,insurance$charges,main="BMI vs Insurance Charges",xlab="BMI",ylab="Insurance charges",col="blue",pch=19)
# Adding a regression line
abline(lm(charges~bmi,data=insurance),col="red",lwd=2)
cor(insurance$bmi, insurance$charges)


################################################################
# 5. Simple Linear Regression 
################################################################

Simple_model <- lm(charges~bmi,data=insurance)
summary(Simple_model)
 
###############################################################
# 6. Multiple Linear Regression
###############################################################

Multiple_model <- lm(charges~age+bmi+smoker+children+sex+region,data=insurance)
summary(Multiple_model)
coef(Multiple_model)
confint(Multiple_model)


##############################################################
# 7. Model Coefficients (Feature Importance)
##############################################################
coef(Multiple_model)
coef_values <- coef(Multiple_model)[-1]
# visualizing regression coefficients to compare predictor influence
barplot(coef_values,col="pink",las=2,main="Feature Importance",ylab="Coefficient")


##############################################################
# 8. Correlation Matrix
##############################################################
cor(insurance[,c("age","bmi","children","charges")])
# Correlation heatmap(coorplot)
library(corrplot)
corrplot(cor(insurance[, c("age","bmi","children","charges")]),
         method="color",
         addCoef.col="black",
         tl.col="black")


#############################################################
# 9. Residual Diagnostics
#############################################################


# Checking regression assumptions using diagnostic plots
par(mfrow=c(2,2))
plot(Multiple_model)
par(mfrow=c(1,1))



#############################################################
# 10.Checking Model Predictions
############################################################

insurance$predicted_charges <- predict(Multiple_model)

# NOW COMPARING ACTUAL VS PREDICTED
plot(insurance$charges,insurance$predicted_charges,main="Actual vs Predicted Charges",xlab="Actual Charges",ylab="Predicted Charges",col="blue",pch=19)
abline(0,1,col="red",lwd=2)


##########################################################
# 11. Model Evaluation
##########################################################
RMSE <- sqrt(mean((insurance$charges-insurance$predicted_charges)^2))
print(RMSE)
R2 <- summary(Multiple_model)$r.squared
print(R2)
#########################################################
# 12. Exporting Results
#########################################################

write.csv(insurance,"insurance_predictions.csv",row.names=F)
cat("Insurance Claims Cost Analysis completed successfully!\n")
#Display R session information for reproducibility 
sessionInfo()

