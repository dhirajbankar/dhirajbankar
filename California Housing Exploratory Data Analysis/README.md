## Project Name: Heart Disease Binary Classifier using python
A manager at the bank is disturbed with more and more customers leaving their credit card services. I would like to predict for them who is going to get churned so they can proactively go to the customer to provide them better services and turn customers' decisions in the opposite direction.


## Short description: 

Finding the hidden information and create a machine learning model is the goal of this project. As part of my analysis I took the credit card of a bank, where the a manager at the bank is disturbed with more and more customers leaving their credit card services. They would really appreciate if one could predict for them who is going to get churned so they can proactively go to the customer to provide them better services and turn customers' decisions in the opposite direction. End of this project I will create a model where it can predict the customers who is gonna get churned.

## General Information: 
Categorical Features
 -	Attrition_Flag (1: Existing Customer, 0: Attrited Customer): The Customer leave or not
 -	Gender (1: Male, 0: Female)
 -	Education_Level (Graduate , High School, Unknown, Uneducated, College, Post-Graduate, Doctorate)
 -	Marital_Status (Married, Single, Unknown, Divorced)
 -	Income_Category (Less than 40K, 40K - 60K, 80K - 120K, 60K - 80K, Unknown, 120K +) in dollar
 -	Card_Category (Blue, Silver, Gold, Platinum)


1) Count plot for all Categorial Features
 

 


Observations
•	We can see that the dataset is not equally distribute according to Attrition_Flag. We have samples which are mostly Existing.
•	We can say that if education level is improved, using the credit card is decreasing.
•	Generally people use blue card, it's must be correlated with income.
2) Count plot for all Numerical Features
![image](https://user-images.githubusercontent.com/19917405/126158429-3c2854ca-ed3f-4475-8b2a-bb6f7d43060a.png)
![image](https://user-images.githubusercontent.com/19917405/126158460-5de80ed2-80f5-4a9c-ac30-f0e3f34768e0.png)
![image](https://user-images.githubusercontent.com/19917405/126158477-d7a1bc96-5a45-4ecb-977c-c22391e01673.png)

 
 

 
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
![image](https://user-images.githubusercontent.com/19917405/126158489-687cfac0-9cd8-48b1-b49c-26e387aa0b04.png)

4) Feature selection

![image](https://user-images.githubusercontent.com/19917405/126158538-006c07fb-f67a-4290-a2d2-8743e2f87163.png)
![image](https://user-images.githubusercontent.com/19917405/126158552-639d4f70-a945-4e1d-8261-c6b1ab14e095.png)



## Conclusion / Results
![image](https://user-images.githubusercontent.com/19917405/126158593-f60cb0d7-1882-4b7f-92ec-3da966df90a4.png)
![image](https://user-images.githubusercontent.com/19917405/126158627-4a93a1b4-8cce-41f4-b870-3aeea20dc1fc.png)

The LogisticRegression model predicted the 114 existing customer as attrited customers and 143 attrited customers as existing customer
The RandomForestClassifier model predicted the 24 existing customer as attrited customers and 215 attrited customers as existing customer
The GaussianNB model predicted the 93 existing customer as attrited customers and 224 attrited customers as existing customer
As per accuracy the RandomForestClassifier should perform best but LogisticRegression model is performing better that other models. It could be due to feture selections which I did. 




## About dataset:
The data has been pulled from Kaggle Link below
https://www.kaggle.com/sakshigoyal7/credit-card-customers

