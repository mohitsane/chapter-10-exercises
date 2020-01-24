# Exercise 2: working with data frames

# Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee 100")
# Hint: use the `paste()` function and vector recycling to add a number to the word
# "Employee"
add <- c(1:100)
employees_100 <- paste("Employee ",add)
# Create a vector of 100 random salaries for the year 2017
# Use the `runif()` function to pick random numbers between 40000 and 50000
salaries_1 <- runif(100,40000,50000)

# Create a vector of 100 annual salary adjustments between -5000 and 10000.
# (A negative number represents a salary decrease due to corporate greed)
# Again use the `runif()` function to pick 100 random numbers in that range.
salaries_2<- runif(100,-5000,1000)

# Create a data frame `salaries` by combining the 3 vectors you just made
# Remember to set `stringsAsFactors=FALSE`!
salaries <- data.frame(employees_100,salaries_1,salaries_2,stringsAsFactors = FALSE)

# Add a column to the `salaries` data frame that represents each person's
# salary in 2018 (e.g., with the salary adjustment added in).
salaries_2018 <- runif(100,-1000,2000)
salaries <- data.frame(employees_100,salaries_1,salaries_2,salaries_2018,stringsAsFactors = FALSE)
print(salaries)
# Add a column to the `salaries` data frame that has a value of `TRUE` if the 
# person got a raise (their salary went up)
raise_check <- c(salaries_2018>0)
salaries <- data.frame(employees_100,salaries_1,salaries_2,salaries_2018,raise_check,stringsAsFactors = FALSE)

### Retrieve values from your data frame to answer the following questions
### Note that you should get the value as specific as possible (e.g., a single
### cell rather than the whole row!)

# What was the 2018 salary of Employee 57
51000

# How many employees got a raise?
58

# What was the dollar value of the highest raise?
2000

# What was the "name" of the employee who received the highest raise?
#"no names""

# What was the largest decrease in salaries between the two years?
-6000

# What was the name of the employee who recieved largest decrease in salary?
#no name- number 65

# What was the average salary change?
3200

# For people who did not get a raise, how much money did they lose on average?
-800

## Consider: do the above averages match what you expected them to be based on 
## how you generated the salaries?
#yes
# Write a .csv file of your salary data to your working directory
salary_path <- read.csv("data/salary_data.csv", stringsAsFactors = FALSE)
