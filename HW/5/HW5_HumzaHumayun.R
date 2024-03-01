#1. Importing Data into R: How would you read a CSV file named "data.csv" into R as a dataframe?
data1 <- read.csv('C:/Users/humay/DATA-SCIENCE/DATA-3421/HW/5/data.csv')
head(data1, 5)
#2. Exploring Data: What function would you use to get a summary of each column in the dataset?
summary(data1)
#3. Basic Operations with DataFrame: How can you extract the column Age from the dataset?
data1$Age
#4. Filtering a DataFrame: Write a command to filter the dataset for individuals aged 25 and above.
subset(data1,Age>=25)
#5. Generate Statistical Indicators: How do you calculate the mean Income from the dataset?
mean(data1$Income)
#6. Descriptive Statistics with the psych Package: 
#Use the describe() function from the psych package to get descriptive statistics for HoursWorkedPerWeek.
#What command would you use?
install.packages("psych") 
library(psych)
describe(data1$HoursWorkedPerWeek)
#7. Determining the Skewness and Kurtosis: How would you calculate the skewness and kurtosis for the Weight_kg column?
install.packages("moments")
library(moments)
skewness(data1$Weight_kg)
kurtosis(data1$Weight_kg)
#8. Data Transformation: Transform the Income column to log scale and store it in a new column named LogIncome
data1$LogIncome<-log(data1$Income)
data1$LogIncome
#9. Recoding Continuous Variables: Recode JobSatisfaction into three categories: Low (1-3), Medium (4-7), High (8-10).
install.packages("dplyr")
library(dplyr)
library(dplyr)
data1 %>%
  mutate(JobSatisfactionCategory = case_when(
    JobSatisfaction %in% 1:3 ~ "Low",
    JobSatisfaction %in% 4:7 ~ "Medium",
    JobSatisfaction %in% 8:10 ~ "High",
    TRUE ~ NA_character_
  ))
#10. Sorting Data Frames: Sort the dataset by Age in descending order.
data1[order(data1$Age,decreasing = TRUE),]
#11. Using filter(): Filter the dataset for individuals who work more than 40 hours per week and live in "USA".
filter(data1,HoursWorkedPerWeek > 40 & Country == "USA")
#12. Using arrange(): Arrange the dataset based on Income in ascending order.
arrange(data1,Income)
#13. Pick Variables by Their Names (select()): Select the columns ID, Age, and Gender from the dataset.
data1 %>% select(ID,Age,Gender)
#14. Create New Variables with Existing Variables (mutate()): Create a new variable BMI (Body Mass Index).
#BMI = weight/height but it is in units of kg/cm so have to convert cm to m
data1 %>% mutate(BMI=(Weight_kg)/(Height_cm/100))
#15. Label Encoding: Encode Gender as 0 for Female and 1 for Male
data1$Gender<-as.numeric(factor(data1$Gender))
data1
