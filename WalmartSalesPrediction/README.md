## Project Name: Heart Disease Binary Classifier using python
Historical sales data for 45 Walmart stores located in different regions are available. There
are certain events and holidays which impact sales on each day. The business is facing a
challenge due to unforeseen demands and runs out of stock sometimes, due to
inappropriate machine learning algorithm. Walmart would like to predict the sales and
demand accurately. An ideal ML algorithm will predict demand accurately and ingest
factors like economic conditions including CPI, Unemployment Index, etc. The objective is
to determine the factors affecting the sales and to analyze the impact of markdowns
around holidays on the sales.


## Short description: 

Dataset:

Below is the URL address for the heart disease dataset.
 https://www.kaggle.com/rutuspatel/retail-analysis-with-walmart-sales-data	
The dataset has about 8 attributes. 
•	Store - the store number
•	Date - the week of sales
•	Weekly_Sales - sales for the given store
•	Holiday_Flag - whether the week is a special holiday week 1 – Holiday week 0 – Non-holiday week
•	Temperature - Temperature on the day of sale
•	Fuel_Price - Cost of fuel in the region
•	CPI – Prevailing consumer price index
•	Unemployment - Prevailing unemployment rate
The advantage with this dataset is that it can be used to build the predictive model as the goal is to predict the sale of the day for particular Walmart store. However, the challenge with this dataset is that the amount of data is very limited and it has only 6435 rows and 8 attributes including the sales which is what I am going to predict.


## Methods used
There are 3 different models that are being used on the current dataset. Given it’s a prediction problem, all the chosen models were regression models. As with any prediction problem, the first model is the multiple linear regression. Followed by the multiple linear regression, the next model used here is the polynomial regression just to make sure and catch any patterns that does not perform really well on the polynomial regression. The third model that was chosen for this dataset is the random forest regression model. The rationale for this model is to make sure to try a regression model which different from traditional regression models such as multiple linear regression or the polynomial regression model.



## Conclusion / Results
Linear Regression is not an appropriate model to use which is clear from it's low accuracy as well as Polynomial Regression model has accuracy of 59%. However, Random Forest Regression gives accuracy of over 95% , so, it is the best model to forecast demand.




## About dataset:
The data has been pulled from Kaggle Link below
https://www.kaggle.com/rutuspatel/retail-analysis-with-walmart-sales-data	

