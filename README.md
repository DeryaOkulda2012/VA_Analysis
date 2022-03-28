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

# Machine Learning Model 

Each fiscal year the Department of Veterans Affairs’ Office of Policy and Planning publishes the annual Geographic Distribution of VA Expenditures (GDX) Report for the public and all stakeholders.  

The GDX report provides the estimated dollar expenditures for major VA programs at the state, county, and Congressional District levels.  

Expenditure data are grouped by the following categories:  Compensation and Pension; Education and Vocational Rehabilitation and Employment; Insurance and Indemnities; Construction and Related Costs; General Operating Expenses and Related Costs; Loan Guaranty; and Medical Expenditures.  

*add explanation of SAIL data and what it includes. Each VA medical center is given an Efficiency score 0-100. We will use Linear regression to predict the efficiency score (0-100) of a VA medical center based on factors such as expenditures, unique patient data, patient experience, and employee satisfaction. The GDX Report also includes Veteran population estimates at the state, county and Congressional District level and the number of unique patients who used VA health care services.

### Which model did you choose and why?
- Linear regression 
- We want to predict the Efficiency score based on a number of factors including expenditures, unique patient data, patient experience, and employee satisfaction

The basic pattern for supervised learning we plan to use in this linear regression problem:
- Split the data into input (X) and output (y).
  - Input = all other columns in final dataset
  - Output = Efficiency
- Create an instance of the model with model = LinearRegression().
- Train the model with the dataset with model.fit(X,y).
- Create predictions with y_pred = model.predict(X).
