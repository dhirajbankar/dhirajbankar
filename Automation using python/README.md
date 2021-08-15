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
 ![image](https://user-images.githubusercontent.com/19917405/126317285-e54ae0fb-09b1-4691-bc67-0ba652c7837f.png)
![image](https://user-images.githubusercontent.com/19917405/126317308-54e1356f-90d4-43d3-af7c-610fddaf30f3.png)

Attrid customeds by categorical Feature and plot the count for it.
![image](https://user-images.githubusercontent.com/19917405/126317340-111fff10-c23c-4201-b4a4-1ff6bddc2636.png)


 

Observations
 - We can see that the dataset is not equally distribute according to Attrition_Flag. We have samples which are mostly Existing.
 - We can say that if education level is improved, using the credit card is decreasing.
 - Generally people use blue card, it's must be correlated with income.
 
2) Count plot for all Numerical Features
![image](https://user-images.githubusercontent.com/19917405/126317682-9a910bed-743d-4220-8f21-edc484ce520b.png)


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
![image](https://user-images.githubusercontent.com/19917405/126317446-c338a74b-6f5e-4f3a-9ddc-d14bef675378.png)

![image](https://user-images.githubusercontent.com/19917405/126317465-de2373d2-2406-4574-a643-afaf788bd896.png)

## Conclusion / Results
![image](https://user-images.githubusercontent.com/19917405/126317567-d230fd58-cd50-460f-83d2-e9071f6013cd.png)

![image](https://user-images.githubusercontent.com/19917405/126317591-b0b0f135-2afb-4644-b0eb-4a65ba352278.png)


The LogisticRegression model predicted the 114 existing customer as attrited customers and 143 attrited customers as existing customer
The RandomForestClassifier model predicted the 24 existing customer as attrited customers and 215 attrited customers as existing customer
The GaussianNB model predicted the 93 existing customer as attrited customers and 224 attrited customers as existing customer
As per accuracy the RandomForestClassifier should perform best but LogisticRegression model is performing better that other models. It could be due to feture selections which I did. 

 
## About dataset:
The data has been pulled from Kaggle Link below
https://www.kaggle.com/sakshigoyal7/credit-card-customers
