## Project Name: Walmart Sales prediction
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

## EDA

![image](https://user-images.githubusercontent.com/19917405/129463290-5ba42a10-cb54-4b6a-bf07-ee049273509e.png)

![image](https://user-images.githubusercontent.com/19917405/129463292-8fd6ca98-f510-4d72-8f37-f6708f5e8be8.png)

![image](https://user-images.githubusercontent.com/19917405/129463294-c204373f-442d-46b2-9779-4a287b0f386c.png)


![image](https://user-images.githubusercontent.com/19917405/129463295-56fd935b-99cb-4139-acd7-91fef985c8dd.png)


![image](https://user-images.githubusercontent.com/19917405/129463297-1db3cca2-3e1c-460c-b84c-6a35fc831151.png)

![image](https://user-images.githubusercontent.com/19917405/129463299-67f196a4-9a9c-4de0-b1a5-7886d57a748b.png)

![image](https://user-images.githubusercontent.com/19917405/129463302-fdc0ab94-3d70-4870-b894-a962db6d8cf4.png)

## Data cleaning

### Before
![image](https://user-images.githubusercontent.com/19917405/129463306-c54d8b15-2037-4ba6-a44a-defe830089ab.png)
### After
![image](https://user-images.githubusercontent.com/19917405/129463309-3755e368-68e7-4ee3-b941-84b52f502471.png)


## Methods used
There are 3 different models that are being used on the current dataset. Given it’s a prediction problem, all the chosen models were regression models. As with any prediction problem, the first model is the multiple linear regression. Followed by the multiple linear regression, the next model used here is the polynomial regression just to make sure and catch any patterns that does not perform really well on the polynomial regression. The third model that was chosen for this dataset is the random forest regression model. The rationale for this model is to make sure to try a regression model which different from traditional regression models such as multiple linear regression or the polynomial regression model.

![image](https://user-images.githubusercontent.com/19917405/129463323-b19279d8-8043-4d45-ba05-4db6de7b1ee3.png)



## Conclusion / Results
Linear Regression is not an appropriate model to use which is clear from it's low accuracy as well as Polynomial Regression model has accuracy of 59%. However, Random Forest Regression gives accuracy of over 95% , so, it is the best model to forecast demand.




## About dataset:
The data has been pulled from Kaggle Link below
https://www.kaggle.com/rutuspatel/retail-analysis-with-walmart-sales-data	

