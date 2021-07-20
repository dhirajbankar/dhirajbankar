# Assignment: ASSIGNMENT 7
# Name: Bankar, Dhiraj
# Date: 2020-10-15
library(readxl)
library(boot)
library(car)
library(mlogit)
library(foreign)
library(caTools)
library(ggplot2)
library(class)
library(Hmisc)
library(Rcmdr)
## Set the working directory to the root of your DSC 520 directory
setwd("//Users/dhirajbankar/R_Laguage/dsc520/assignments/finalProject/")

## Load the `data/r4ds/heights.csv` to
heartData <- read.csv("heart.csv" )
heartDF <- data.frame(heartData)
#Cleaning the dataset

cov(heartDF)
complete.cases(heartDF)
length(heartDF$age)
(heartDF$age <- na.omit(heartDF$age))
length(heartDF$age)


str(heartData)
summary(heartData)

cor(heartDF)
heartAsMatrix <- as.matrix(heartData[,c("age" ,"trestbps" )])
rcorr(heartAsMatrix)
cor.test(heartDF$age , heartDF$trestbps)

heart_mode_1 <- glm(trestbps ~ chol, data=heartDF)
summary(heart_mode_1)
par(mfrow=c(2,2))
plot(heart_mode_1)

heart_mode_2 <- glm(trestbps ~ oldpeak, data=heartDF)
summary(heart_mode_2)
par(mfrow=c(2,2))
plot(heart_mode_2)

heart_mode_3 <- glm(trestbps ~ fbs, data=heartDF)
summary(heart_mode_3)
par(mfrow=c(2,2))
plot(heart_mode_3)


heart_mode_4 <- glm(chol ~ exang, data=heartDF)
summary(heart_mode_4)
par(mfrow=c(2,2))
plot(heart_mode_4)
lm.beta(heart_mode_4)

heart_mode_5 <- glm(trestbps ~ chol+ oldpeak + exang + fbs + ca, data=heartDF)
summary(heart_mode_5)
par(mfrow=c(2,2))
plot(heart_mode_5)
lm.beta(heart_mode_5)


ggplot(data = heartDF, aes(x = chol, y = trestbps))+
  geom_line()+ geom_smooth(method = "lm" , colour = "Blue" )


ggplot(data = heartDF, aes(y = fbs, x = trestbps))+
  geom_line()+ geom_smooth(method = "lm" , colour = "Blue" )

ggplot(heartDF, aes(x = trestbps)) +
  geom_histogram(aes(color = sex), fill = "white",
                 position = "identity", bins = 30) +
  scale_color_manual(values = c("#00AFBB", "#E7B800")) 

ggplot(heartDF, aes(x = fbs)) +
  geom_histogram(aes(color = sex, fill = sex), 
                 position = "identity", bins = 10, alpha = 0.4) 

ggplot(heartDF, aes(trestbps, fill = sex)) + geom_density(alpha = 0.2)

ggplot(heartDF,  aes(sex, fill = trestbps))  + 
  geom_histogram(alpha = 0.5, aes(y = ..density..), position = 'identity')

ggplot(heartDF, aes(x = fbs, fill = trestbps)) +
  geom_histogram(position = "identity", alpha = 0.4)

ggplot(data = heartDF, aes(y = trestbps, x = fbs)) + geom_point()+ geom_line(color='red',data = heartDF, aes(y=trestbps, x=fbs))

ggplot(data = heartDF, aes(y = chol, x = exang)) + geom_point()+ geom_line(color='red',data = heartDF, aes(y=chol, x=exang))


set.seed(42)
p1 <- hist(heartDF$sex)                     # centered at 4
p2 <- hist(heartDF$sex )                     # centered at 6
plot( p1, col=rgb(0,0,1,1/4), xlim=c(0,10))  # first histogram
plot( p2, col=rgb(1,0,0,1/4), xlim=c(0,10), add=T)  # second



ggplot(heartDF , aes (x=age)) + geom_histogram(binwidth=1) + labs(x="Cholesterol")

ggplot(heartDF , aes (x=fbs)) + geom_histogram(binwidth=1) + labs(x="fbs") 

+ ggplot(heartDF , aes (x=trestbps)) + geom_histogram(binwidth=1) + labs(x="trestbps") 


ggplot(data = heart_mode_1, aes(x = chol )) + geom_histogram(binwidth=10) + labs(x="Age")


library(car)
scatterplot(chol ~ trestbps , data=heartDF,
            xlab="Blood Pressur", ylab="Cholesterol",
            main="Enhanced Scatter Plot")


scatterplot(sex ~ trestbps , data=heartDF,
            xlab="Blood Pressur", ylab="Cholesterol",
            main="Enhanced Scatter Plot")

scatterplot(exang ~ chol , data=heartDF,
            xlab="Blood Pressur", ylab="Cholesterol",
            main="Enhanced Scatter Plot")


usingDF1 <- data.frame(heartDF['trestbps'],heartDF['chol'],heartDF['oldpeak'],heartDF['exang'],heartDF['fbs'],heartDF['ca'])
usingDF1$residuals <- resid(heart_mode_2)
usingDF1$standerdized.residuals <- rstandard(heart_mode_2)
usingDF1$studentized.residuals <- rstudent(heart_mode_2)
usingDF1$cooks.distance <- cooks.distance(heart_mode_2)
usingDF1$dfbeta <- dfbeta(heart_mode_2)
usingDF1$dffits <- dffits(heart_mode_2)
usingDF1$leverage <- hatvalues(heart_mode_2)
usingDF1$covariance.ratio <- covratio(heart_mode_2)
usingDF1$large.residual <- usingDF1$studentized.residuals > 2 | usingDF1$studentized.residuals < -2
usingDF1$fitted <- heart_mode_2$fitted.values

histogram <- ggplot(usingDF1 , aes (studentized.residuals)) + geom_histogram(aes(y = ..density..), colour = "black" , fill = "white" ) + labs( x= "Studentized Residual", y = "Density") 
histogram + stat_function(fun = dnorm, args = list(mean = mean(usingDF1$studentized.residuals, na.rm = TRUE), sd = sd(usingDF1$studentized.residuals , na.rm = TRUE)), colour = "red", size = 1 ) 

## Fit a linear model using the `chol` variable as the predictor and `blood pressure` as the outcome
heart_mode_1_lm <- lm(heartDF$chol ~ heartDF$trestbps)
heart_mode_1_lm

heart_predict_df <- data.frame(chol = predict(heart_mode_1_lm, heartDF), trestbps=heartDF$trestbps)



## Plot the predictions against the original data
ggplot(data = heartDF, aes(y = trestbps, x = chol)) +   geom_line(color='red',data = heart_predict_df, aes(y=trestbps, x=chol))



salePrice <- housingData["Sale Price"]
squareFoot  <- housingData["sq_ft_lot"]
bedrooms <- housingData["bedrooms"]
bath_full_count <- housingData["bath_full_count"]
year_built <- housingData["year_built"]
squareFootLive <- housingData["square_feet_total_living"]

housingDF <- data.frame(salePrice , squareFoot )
cor(housingModel_1 , use = "complete.obs", method = "pearson")
housingModel_2 <- data.frame(housingData[2] ,housingData[3],housingData[4],
                             housingData[14],housingData[15],housingData[16],housingData[17],housingData[18],
                             housingData[19],housingData[20],housingData[22],housingData[24])
usingDF1 <- data.frame(housingData[2] ,
                       housingData[14],housingData[15],housingData[16],housingData[17],
                       housingData[19],housingData[22])

head(housingModel_2)
cor(housingModel_2 , use = "complete.obs", method = "pearson")


head (housingModel_1)
housingModel_1 <- lm(housingDF)
housingModel_2 <- lm(usingDF1)



summary(housingModel_1)
summary(housingModel_2)

#library(Rcmdr)
lm.beta(housingModel_2)
confint(housingModel_2)
avona(housingModel_1 , housingModel_2)
#summary(lm(housingModel_2 ))

sqrt(salePrice)
sqrt(squareFoot)

cor(heights_df$height , heights_df$earn , use = "complete.obs", method = "pearson")

## Load the ggplot2 library
library(ggplot2)

ggplot(data = housingModel_1, aes(x = salePrice )) + geom_histogram(binwidth=10) + labs(x="Value per square foot")

## Fit a linear model using the `age` variable as the predictor and `earn` as the outcome
age_lm <- lm(heights_df$earn ~ heights_df$age)

## View the summary of your model using `summary()`
summary(age_lm)
## Creating predictions using `predict()`
age_predict_df <- data.frame(earn = predict(age_lm, heights_df), age=heights_df$age)

## Plot the predictions against the original data
ggplot(data = heights_df, aes(y = earn, x = age)) +
  
  geom_line(color='red',data = age_predict_df, aes(y=earn, x=age))

mean_earn <- mean(heights_df$earn)
## Corrected Sum of Squares Total
sst <- sum((mean_earn - heights_df$earn)^2)
## Corrected Sum of Squares for Model
ssm <- sum((mean_earn - age_predict_df$earn)^2)
## Residuals
residuals <- heights_df$earn - age_predict_df$earn
## Sum of Squares for Error
sse <- sum(residuals^2)
## R Squared R^2 = SSM\SST
r_squared <- ssm/sst

## Number of observations
n <- nrow(age_predict_df)
## Number of regression parameters
p <- 2
## Corrected Degrees of Freedom for Model (p-1)
dfm <- (p-1)
## Degrees of Freedom for Error (n-p)
dfe <- (n-p)
## Corrected Degrees of Freedom Total:   DFT = n - 1
dft <- n - 1

## Mean of Squares for Model:   MSM = SSM / DFM
msm <- ssm/dfm
## Mean of Squares for Error:   MSE = SSE / DFE
mse <- sse/dfe
## Mean of Squares Total:   MST = SST / DFT
mst <- sst/dft
## F Statistic F = MSM/MSE
f_score <- msm/mse

## Adjusted R Squared R2 = 1 - (1 - R2)(n - 1) / (n - p)
adjusted_r_squared <- 1 - (1 - r_squared)*(n - 1) / (n - p)

## Calculate the p-value from the F distribution
p_value <- pf(f_score, dfm, dft, lower.tail=F)

