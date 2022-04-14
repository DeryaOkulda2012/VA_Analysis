# VA_Analysis
## Selected Topic
The selected topic is VA data Analysis.

## Reason For Selection
We selected this topic because the Veteran population and VA benefits are always a talking point for legislators. It will be interesting to break down the data, look at some trends and predict what the future can look like for Veterans and their benefits.

## Data Source

The source data is the National Center for Veterans Analysis and Statistics. Specifically, we will be using Geographic Distribution of the Department of Veterans Affairs Expenditures (GDX) Reports. This information is published by the Department of Veterans Affairs' Office of Policy and Planning at the end of each Fiscal Year.

Additional information from the VA's SAIL and SI data sources will be used for patient experience and employee satisfaction.

## Questions We Hope To Answer

The fundamental question we will address: What are the impacts of VA expenditures on patient experience and employee satisfaction in the next few years, particularly between now and 2024, and beyond to 2030?

Also, analyzing trends beyond 2030 can be reviewed. Data can be broken down to state and county level.

We are going to predict which VA hospitals are performing well and should remain open.

We are going to use the following to measure each hospital performance:
* expenditures
* unique patient data
* patient experience
* employee satisfaction

We have data from the following years and we will use it as basis for our model:
- 2020
- 2019
- 2018
- 2017
- 2016

# Machine Learning Model 

Each fiscal year the Department of Veterans Affairs’ Office of Policy and Planning publishes the annual Geographic Distribution of VA Expenditures (GDX) Report for the public and all stakeholders.  

The GDX report provides the estimated dollar expenditures for major VA programs at the state, county, and Congressional District levels.  

Expenditure data are grouped by the following categories:  Compensation and Pension; Education and Vocational Rehabilitation and Employment; Insurance and Indemnities; Construction and Related Costs; General Operating Expenses and Related Costs; Loan Guaranty; and Medical Expenditures.  

Each VA medical center is given an Efficiency score 0-100. We will use Linear regression to predict the efficiency score (0-100) of a VA medical center based on factors such as expenditures, unique patient data, patient experience, and employee satisfaction. The GDX Report also includes Veteran population estimates at the state, county and Congressional District level and the number of unique patients who used VA health care services.

### Which model did you choose and why?
- Originally - Linear regression 
- We want to predict the Efficiency score based on a number of factors including expenditures, unique patient data, patient experience, and employee satisfaction

The basic pattern for supervised learning we plan to use in this linear regression problem:
- Split the data into input (X) and output (y).
  - Input = all other columns in final dataset
  - Output = Efficiency
- Create an instance of the model with model = LinearRegression().
- Train the model with the dataset with model.fit(X,y).
- Create predictions with y_pred = model.predict(X).

We moved away from the linear model after examining our features and target


## Description of preliminary data preprocessing
Examined the proportion of missing values in the dataset and got rid of any features with missing values

![VA_Analysis/Images](missing_values.jpg) missing_values.jpg
 
Plotted the correlation between the features and the target

![VA_Analysis/Images](correlation.jpg)

 
Encoded the categorical features using onehotencoder. To understand and evaluate a categorical variable, preprocessed the values using a technique called one-hot encoding. One-hot encoding identifies all unique column values and splits the single categorical column into a series of columns, each containing information about a single unique categorical value.

![VA_Analysis/Images](onehotencoder.jpg)

 
Standardized the data: The model will interpret the raw numerical data inappropriately, which will yield an inadequate model. To minimize this risk, we used standardizing (also commonly referred to as normalization) on the numerical data prior to training.

![VA_Analysis/Images](standardizing.jpg)

 
Split the preprocessed data into features and target arrays (based on a number of factors including domain knowledge, correlations), split the data into training and testing datasets (80/20)

![VA_Analysis/Images](features.jpg)

 
 
## Models

# Random Forest model using random forest regressor

MAE (mean absolute error was used instead of accuracy) 

![VA_Analysis/Images](RFR.jpg)


# Deep Neural Network

Activation function - Relu

![VA_Analysis/Images/](DNN.jpg)

![VA_Analysis/Images](DNN_MAE.jpg)

Trained using 800 epochs

# XGBRegressor

![VA_Analysis/Images](XGB_MAE.jpg)


# To summarize what we did :
- We load and processed the dataset
- We got familiar with the dataset by plotting some histograms and a correlation heat map of the features
- We used a deep neural network with three hidden layers each one has 256 nodes.
- We used relu activation function on the output layer
- We trained the model then tested it.
- We also tested two other models: XGBRegressor and Random Forest Regressor
- Our XGBRegressor was able to outscore the other two models

# Next Steps :
- Try to put more effort on processing the dataset
- Try to tweak the hyperparameters of the models that we used



