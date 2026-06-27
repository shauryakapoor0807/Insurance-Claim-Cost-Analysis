[1:02 am, 28/06/2026] Shaurya kapoor: How to Run

1. Clone the repository:
   bash
   git clone https://github.com/shauryakapoor0807/Insurance-Claim-Cost-Analysis.git
   

2. Open the project in *RStudio*.

3. Install the required packages (if not already installed):
   R
   install.packages(c("tidyverse", "ggplot2", "corrplot", "readr"))
   

4. Open the Insurance Claims cost analysis.Rproj file.

5. Run the Insurance_Analysis.R script (or your main R script) to:
   - Load the dataset
   - Perform exploratory data analysis
   - Train the linear regression model
   - Generate plots
   - Export predicted insurance charges
[1:03 am, 28/06/2026] Shaurya kapoor: ## 🚀 How to Run

1. Clone this repository:
   bash
   git clone https://github.com/shauryakapoor0807/Insurance-Claim-Cost-Analysis.git
   

2. Open the project in *RStudio* by opening:
   
   Insurance Claims cost analysis.Rproj
   

3. Install the required R packages (if they are not already installed):
   R
   install.packages(c("ggplot2", "readr", "corrplot"))
   

4. Open the r scripts folder and run:
   
   Insurance_Analysis.R
   

5. The script will:
   - Load the insurance dataset
   - Perform exploratory data analysis (EDA)
   - Train a multiple linear regression model
   - Generate visualizations
   - Evaluate model performance
   - Export predicted insurance charges to a CSV file




![R](https://img.shields.io/badge/R-Language-blue?logo=r)
![RStudio](https://img.shields.io/badge/RStudio-IDE-blue?logo=rstudio)
![Linear Regression](https://img.shields.io/badge/Model-Linear%20Regression-success)

# Insurance Claims Cost Analysis using R

## Project Overview
This project predicts medical insurance charges using Linear Regression in R. It includes exploratory data analysis, visualization, feature engineering, model evaluation, and prediction.

## Dataset
- Records: 1338
- Features: Age, Sex, BMI, Children, Smoker, Region
- Target Variable: Insurance Charges

## Tools Used
- R
- RStudio
- ggplot2
- corrplot
- readr
- dplyr

## Workflow
1. Data Loading
2. Data Cleaning
3. Missing Value Check
4. Exploratory Data Analysis
5. Data Visualization
6. Linear Regression
7. Model Evaluation
8. Prediction
9. Export Results

## Model Performance
- R² = 0.75
- RMSE = 6042

## Key Findings
- Smoking has the largest impact on insurance charges.
- Higher BMI increases predicted charges.
- Older individuals generally have higher medical expenses.
- The model explains 75% of the variation in insurance charges.

## Repository Structure
📂 data
📂 r scripts
📂 Plots
📂 Report
📄 README.md

## Author
Shaurya Kapoor
