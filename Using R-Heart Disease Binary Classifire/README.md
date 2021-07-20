## Project Name: Heart Disease Binary Classifier using python
A manager at the bank is disturbed with more and more customers leaving their credit card services. I would like to predict for them who is going to get churned so they can proactively go to the customer to provide them better services and turn customers' decisions in the opposite direction.

## Short description: 
Finding the hidden information and create a machine learning model is the goal of this project. As part of my analysis I took the credit card of a bank, where the a manager at the bank is disturbed with more and more customers leaving their credit card services. They would really appreciate if one could predict for them who is going to get churned so they can proactively go to the customer to provide them better services and turn customers' decisions in the opposite direction. End of this project I will create a model where it can predict the customers who is gonna get churned.

## General Information: 
Categorical Features
 - Attrition_Flag (1: Existing Customer, 0: Attrited Customer): The Customer leave or not
 - Gender (1: Male, 0: Female)
 - Education_Level (Graduate , High School, Unknown, Uneducated, College, Post-Graduate, Doctorate)
 - Marital_Status (Married, Single, Unknown, Divorced)
 - Income_Category (Less than 40K, 40K - 60K, 80K - 120K, 60K - 80K, Unknown, 120K +) in dollar
 - Card_Category (Blue, Silver, Gold, Platinum)
1) Count plot for all Categorial Features
 

 

Observations
 - We can see that the dataset is not equally distribute according to Attrition_Flag. We have samples which are mostly Existing.
 - We can say that if education level is improved, using the credit card is decreasing.
 - Generally people use blue card, it's must be correlated with income.
 
2) Count plot for all Numerical Features

Numerical Features
 - Customer_Age: Customer's Age in Years
 - Dependent_count: Number of dependents
 - Months_on_book: Period of relationship with bank
 - Total_Relationship_Count: Total no. of products held by the customer
 - Months_Inactive_12_mon: No. of months inactive in the last 12 months
 - Contacts_Count_12_mon: No. of Contacts in the last 12 months
 - Credit_Limit: Credit Limit on the Credit Card
 - Total_Revolving_Bal: Total Revolving Balance on the Credit Card
 - Avg_Open_To_Buy: Open to Buy Credit Line (Average of last 12 months)
 - Total_Amt_Chng_Q4_Q1: Change in Transaction Amount (Q4 over Q1)
 - Total_Trans_Amt: Total Transaction Amount (Last 12 months)
 - Total_Trans_Ct: Total Transaction Count (Last 12 months)
 - Total_Ct_Chng_Q4_Q1: Change in Transaction Count (Q4 over Q1)
 - Avg_Utilization_Ratio: Average Card Utilization Ratio
3) Histogram for all numeric values


We have 303 observation with 14 variables:
•	age: age
•	sex: sex
•	cp: chest pain type (4 values)
•	trestbps: resting blood pressure
•	chol: serum cholesterol in mg/dl
•	fbs: fasting blood sugar > 120 mg/dl
•	restecg: resting electrocardiograph results (values 0,1,2)
•	thalach: maximum heart rate achieved
•	exang: exercise induced angina
•	oldpeak: ST depression induced by exercise relative to rest
•	slope: the slope of the peak exercise ST segment
•	ca: number of major vessels (0-3) colored by flourosopy
•	thal: 3 = normal; 6 = fixed defect; 7 = reversable defect
•	target: Target Groups
B. Find the correleation between all veriables
##                  age         sex          cp    trestbps         chol
## age       1.00000000 -0.09844660 -0.06865302  0.27935091  0.213677957
## sex      -0.09844660  1.00000000 -0.04935288 -0.05676882 -0.197912174
## cp       -0.06865302 -0.04935288  1.00000000  0.04760776 -0.076904391
## trestbps  0.27935091 -0.05676882  0.04760776  1.00000000  0.123174207
## chol      0.21367796 -0.19791217 -0.07690439  0.12317421  1.000000000
## fbs       0.12130765  0.04503179  0.09444403  0.17753054  0.013293602
## restecg  -0.11621090 -0.05819627  0.04442059 -0.11410279 -0.151040078
## thalach  -0.39852194 -0.04401991  0.29576212 -0.04669773 -0.009939839
## exang     0.09680083  0.14166381 -0.39428027  0.06761612  0.067022783
## oldpeak   0.21001257  0.09609288 -0.14923016  0.19321647  0.053951920
## slope    -0.16881424 -0.03071057  0.11971659 -0.12147458 -0.004037770
## ca        0.27632624  0.11826141 -0.18105303  0.10138899  0.070510925
## thal      0.06800138  0.21004110 -0.16173557  0.06220989  0.098802993
## target   -0.22543872 -0.28093658  0.43379826 -0.14493113 -0.085239105
##                   fbs     restecg      thalach       exang      oldpeak
## age       0.121307648 -0.11621090 -0.398521938  0.09680083  0.210012567
## sex       0.045031789 -0.05819627 -0.044019908  0.14166381  0.096092877
## cp        0.094444035  0.04442059  0.295762125 -0.39428027 -0.149230158
## trestbps  0.177530542 -0.11410279 -0.046697728  0.06761612  0.193216472
## chol      0.013293602 -0.15104008 -0.009939839  0.06702278  0.053951920
## fbs       1.000000000 -0.08418905 -0.008567107  0.02566515  0.005747223
## restecg  -0.084189054  1.00000000  0.044123444 -0.07073286 -0.058770226
## thalach  -0.008567107  0.04412344  1.000000000 -0.37881209 -0.344186948
## exang     0.025665147 -0.07073286 -0.378812094  1.00000000  0.288222808
## oldpeak   0.005747223 -0.05877023 -0.344186948  0.28822281  1.000000000
## slope    -0.059894178  0.09304482  0.386784410 -0.25774837 -0.577536817
## ca        0.137979327 -0.07204243 -0.213176928  0.11573938  0.222682322
## thal     -0.032019339 -0.01198140 -0.096439132  0.20675379  0.210244126
## target   -0.028045760  0.13722950  0.421740934 -0.43675708 -0.430696002
##                slope          ca        thal      target
## age      -0.16881424  0.27632624  0.06800138 -0.22543872
## sex      -0.03071057  0.11826141  0.21004110 -0.28093658
## cp        0.11971659 -0.18105303 -0.16173557  0.43379826
## trestbps -0.12147458  0.10138899  0.06220989 -0.14493113
## chol     -0.00403777  0.07051093  0.09880299 -0.08523911
## fbs      -0.05989418  0.13797933 -0.03201934 -0.02804576
## restecg   0.09304482 -0.07204243 -0.01198140  0.13722950
## thalach   0.38678441 -0.21317693 -0.09643913  0.42174093
## exang    -0.25774837  0.11573938  0.20675379 -0.43675708
## oldpeak  -0.57753682  0.22268232  0.21024413 -0.43069600
## slope     1.00000000 -0.08015521 -0.10476379  0.34587708
## ca       -0.08015521  1.00000000  0.15183213 -0.39172399
## thal     -0.10476379  0.15183213  1.00000000 -0.34402927
## target    0.34587708 -0.39172399 -0.34402927  1.00000000
##           age trestbps
## age      1.00     0.28
## trestbps 0.28     1.00
## 
## n= 303 
## 
## 
## P
##          age trestbps
## age           0      
## trestbps  0
## 
##  Pearson's product-moment correlation
## 
## data:  heartDF$age and heartDF$trestbps
## t = 5.0475, df = 301, p-value = 7.762e-07
## alternative hypothesis: true correlation is not equal to 0
## 95 percent confidence interval:
##  0.1720897 0.3800657
## sample estimates:
##       cor 
## 0.2793509
From correlation result below are my observations on heart disease data * The trestbps has 27% affecting to the heart. * cp has 27% affecting to the heart. * Cholesterol has 21% affecting to the heart. * oldpeakhas 21% affecting to the heart. * fbs has 12% affecting to the heart. * exang has 9% affecting to the heart. * thal has 6% affecting to the heart. * All other variables has a -ve correlation values(Means they are not impacting or not related to heart disease). We are going to ignore it for further analysis * For Further analysis lets use only age, trestbps , chol, fbs, exang, oldpeak, ca, thal for main analysis
## 
## Call:
## lm(formula = trestbps ~ chol, data = heartDF)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -36.821 -11.259  -1.946   9.513  66.637 
## 
## Coefficients:
##              Estimate Std. Error t value Pr(>|t|)    
## (Intercept) 121.35976    4.87052  24.917   <2e-16 ***
## chol          0.04168    0.01935   2.153   0.0321 *  
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 17.43 on 301 degrees of freedom
## Multiple R-squared:  0.01517,    Adjusted R-squared:  0.0119 
## F-statistic: 4.637 on 1 and 301 DF,  p-value: 0.03208
 
## 
## Call:
## lm(formula = trestbps ~ chol + oldpeak + exang + fbs + ca, data = heartDF)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -33.003 -11.418  -2.039  10.695  62.957 
## 
## Coefficients:
##              Estimate Std. Error t value Pr(>|t|)    
## (Intercept) 118.08407    4.79559  24.623  < 2e-16 ***
## chol          0.03690    0.01890   1.952  0.05187 .  
## oldpeak       2.71054    0.89579   3.026  0.00270 ** 
## exang         0.02688    2.17444   0.012  0.99015    
## fbs           8.41367    2.76588   3.042  0.00256 ** 
## ca            0.51587    0.99098   0.521  0.60306    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 16.95 on 297 degrees of freedom
## Multiple R-squared:  0.08154,    Adjusted R-squared:  0.06608 
## F-statistic: 5.273 on 5 and 297 DF,  p-value: 0.0001172
 
C. What is most common age when heart disease gets started?
 
•	From the above histogram I would say heart disease are getting started from thirties of the age
D. How much is the effect of cholesterol on heart?
From the correlation found that the Cholesterol has 21% affecting to the heart. Initially before starting the analysis I thought that the Cholesterol is the most important factor which cause the heart disease. But blood pressure and stress has 27% of effect on heart disease.
## `geom_smooth()` using formula 'y ~ x'
  
•	The major factor of heart disease is blood pressure and Cholesterol. If you observe above plot, the increase in Cholesterol increases the blood pressure level.
E. Who is most affected by heart disease (Male or Female)?
  
•	Mail has more heart disease that women.
F. Is fasting blood sugar has a relation with heart disease?
 
•	With fasting the blood pressure increases so the patient with heart disease should not do long fasting.
G. How much help or improvement we can achieve with the help of exercise and diet?
•	I couldn’t find the exact answer of this question.
H. Will create a multi linear model find the appropriate results.
## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
 
## Warning: `stat` is deprecated
 
## `geom_smooth()` using formula 'y ~ x'
   
 
•	Overall regression model is unbiased. We could summarize saying that the model appears, in most senses, to be both accurate for the sample and generalizable to the population.
I. How much is confidence level of the model?
##                     2.5 %       97.5 %
## (Intercept)  1.086464e+02 127.52170683
## chol        -3.002895e-04   0.07410088
## oldpeak      9.476387e-01   4.47343480
## exang       -4.252385e+00   4.30613667
## fbs          2.970462e+00  13.85687880
## ca          -1.434361e+00   2.46609683
•	What I observed from the outcome of confident interval. A good model will have a small confidence interval, indicating that the value of b is of the b-values tells us about the direction of the relationship between the predictors and outcome. If you observe outcome of my model is very small, means this model is good.
Add Citations
•	Discovering Statistics Using R(Field, Miles, and Field 2012)
![image](https://user-images.githubusercontent.com/19917405/126320414-d571e7fb-2807-4c08-89b7-07659b026a4b.png)


## Conclusion / Results
The LogisticRegression model predicted the 114 existing customer as attrited customers and 143 attrited customers as existing customer
The RandomForestClassifier model predicted the 24 existing customer as attrited customers and 215 attrited customers as existing customer
The GaussianNB model predicted the 93 existing customer as attrited customers and 224 attrited customers as existing customer
As per accuracy the RandomForestClassifier should perform best but LogisticRegression model is performing better that other models. It could be due to feture selections which I did. 

 
## About dataset:
The data has been pulled from Kaggle Link below
https://www.kaggle.com/sakshigoyal7/credit-card-customers
