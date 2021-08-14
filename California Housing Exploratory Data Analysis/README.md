## Project Name: California Housing exploratory data analysis
Prediction of median house prices for California districts derived from the 1990 census.
For this analysis we use the California Housing dataset found on the Kaggle Data Repository at the following location:

California Housing Prices

The objective of the analysis is to predict median house prices in different regions of California as per the 1990 census data.

We hope to gain valuable insights by following this process. The various steps in the process can be elaborated on as follows:

Load data
Prepare data
Clean data
Missing values
Outliers
Erroneous values
Explore data
Exploratory descriptive analysis (EDA)
Correlation analysis
Variable cluster analysis
Transform Data
Engineer features
Encode data
Scale & normalise data
Impute data (if not done in previous steps)
Feature selection/ importance analysis
Build model
Model selection
Data sampling (validation strategy, imbalanced classification)
Hyperparameter optimisation
Validate model
Accuracy testing
Analysis of results
Response curves
Accuracy analysis
Commentary
This dataset is used in the second chapter of Aurélien Géron's recent book 'Hands-On Machine learning with Scikit-Learn and TensorFlow' - highly recommended!

## Visualizations: 

![image](https://user-images.githubusercontent.com/19917405/129462784-2681a403-b3f1-466d-8b14-43fd9aed66d3.png)

### High level overview
![image](https://user-images.githubusercontent.com/19917405/129462788-ae57cea4-3088-4579-8bd5-c3d53e4a270d.png)

### Categorical variable overview
![image](https://user-images.githubusercontent.com/19917405/129462797-d0e0e51f-cef9-4981-a456-38ce80c90f17.png)

We now have a look at correlation in the dataset. We use Pearson's Correlation as most of the variables are continuous.
![image](https://user-images.githubusercontent.com/19917405/129462801-3e20b27b-31e1-43df-818e-538d5e9bec90.png)

### Find the areas where prices are highest by using a Decision Tree
![image](https://user-images.githubusercontent.com/19917405/129462813-8034afb3-5eb2-494d-8d7f-41f537c1cb97.png)

### scatter plot of longitude vs latitude to see shape of price distribution
![image](https://user-images.githubusercontent.com/19917405/129462817-93660408-6b7b-4002-8341-806a7fe311d2.png)

### annotate this plot with the first two splits in the Decision Tree.
![image](https://user-images.githubusercontent.com/19917405/129462823-3274e140-1bb4-4dd9-9417-448fc715b0e0.png)

## Conclusion / Results
Based on this simple EDA and model accuracy results we can confirm that location is a very strong predictor of house prices indeed. An R-squared of 73% is a very strong indication of strong correlation between location and house price . This is however not a surprise as everyone know that it is all about: "location, location, location"!

In our next notebook we will do some more EDA and investigate correlation patterns with other variables. We will then build some predictive models using Pipelines. Cannot wait!
