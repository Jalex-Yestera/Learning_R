# 1 Write a R program to take input from the user and display the values.
name = readline(prompt="Input your name: ")
age =  readline(prompt="Input your age: ")
print(paste("My name is",name, "and I am",age ,"years old."))
#  Also print the version of R installation.
print(R.version.string)



# 2 Write a R program to get the details of the objects in memory.

name = "Python"; 
n1 =  10; 
n2 =  0.5
nums = c(10, 20, 30, 40, 50, 60)
print(ls())
print("Details of the objects in memory:")
print(ls.str())

# 3 Write a R program to create a sequence of numbers from 20 to 50
print("Sequence of numbers from 20 to 50:")
print(seq(20,50))
#  and find the mean of numbers from 20 to 60
print("Mean of numbers from 20 to 60:")
print(mean(20:60))
# and sum of numbers from 51 to 91.
print("Sum of numbers from 51 to 91:")
print(sum(51:91))

# 4 Write a R program to create a vector which contains
# 10 random integer values between -50 and +50
v = sample(-50:50, 10, replace=TRUE)
print("Content of the vector:")
print("10 random integer values between -50 and +50:")
print(v)

# 5 Write a R program to get the first 10 Fibonacci numbers.
Fib <- numeric(10)
Fib[1] <- Fib[2] <- 1
for (i in 3:10) Fib[i] <- Fib[i - 2] + Fib[i - 1]
print("First 10 Fibonacci numbers:")
print(Fib)

# 6 Write a R program to get all prime numbers up to a given number
prime_numbers <- function(n) {
  if (n >= 2) {
    x = seq(2, n)
    prime_nums = c()
    for (i in seq(2, n)) {
      if (any(x == i)) {
        prime_nums = c(prime_nums, i)
        x = c(x[(x %% i) != 0], i)
      }
    }
    return(prime_nums)
  }
  else 
  {
    stop("Input number should be at least 2.")
  }
} 
prime_numbers(12)

#  7 Write a R program to print the numbers from 1 to 100
# and print "Fizz" for multiples of 3, print "Buzz" for multiples of 5, 
# and print "FizzBuzz" for multiples of both.

for (n in 1:100) {
  if (n %% 3 == 0 & n %% 5 == 0) {print("FizzBuzz")}
  else if (n %% 3 == 0) {print("Fizz")}
  else if (n %% 5 == 0) {print("Buzz")}
  else print(n)
}


# 8 Write a R program to extract first 10 english letter in lower case
# and last 10 letters in upper case 
# and extract letters between 22nd to 24th letters in upper case.
print("First 10 letters in lower case:")
t = head(letters, 10)
print(t)
print("Last 10 letters in upper case:")
t = tail(LETTERS, 10)
print(t)
print("Letters between 22nd to 24th letters in upper case:")
e = tail(LETTERS[22:24])
print(e)


# 9 Write a R program to find the factors of a given number.
print_factors = function(n) {
  print(paste("The factors of",n,"are:"))
  for(i in 1:n) {
    if((n %% i) == 0) {
      print(i)
    }
  }
}
print_factors(4)

# 10 Write a R program to find the maximum and the minimum value of a given vector.
nums = c(10, 20, 30, 40, 50, 60)
print('Original vector:')
print(nums)   
print(paste("Maximum value of the said vector:",max(nums)))
print(paste("Minimum value of the said vector:",min(nums)))

# 11. Write a R program to get the unique elements of a given string and unique numbers of vector.
str1 = "What the fuck does this mean?"
print("Original vector(string)")
print(str1)
print("Unique elements of the said vector:")
print(unique(tolower(str1)))
nums = c(1, 2, 2, 3, 4, 4, 5, 6)
print("Original vector(number)")
print(nums)
print("Unique elements of the said vector:")
print(unique(nums))

# 12. Write a R program to create three vectors a,b,c with 3 integers.
a<-c(1,2,3)
b<-c(4,5,6)
c<-c(7,8,9)
# Combine the three vectors to become a 3×3 matrix
# where each column represents a vector
m<-cbind(a,b,c)
#  Print the content of the matrix.
print("Content of the said matrix:")
print(m)

# 13 Write a R program to create a list of random numbers in normal
# distribution and count occurrences of each value.
n = floor(rnorm(1000, 50, 100))
print('List of random numbers in normal distribution:')
print(n)
t = table(n)
print("Count occurrences of each value:")
print(t)

# 14. Write a R program to read the .csv file and display the content.
gapminder = read.csv(file="../data/gapminder.csv", header=TRUE, sep=",")
print("Content of the .csv file:")
print(gapminder)

# 15. Write a R program to create three vectors numeric data, character data and logical data. 
# Display the content of the vectors and their type.
a = c(1, 2, 5, 3, 4, 0, -1, -3)
b = c("Red", "Green", "White")
c = c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)
print(a)
print(typeof(a))
print(b)
print(typeof(b))
print(c)
print(typeof(c))

# 16. Write a R program to create a 5 x 4 matrix,
# 3 x 3 matrix with labels and fill the matrix by rows
# and 2 × 2 matrix with labels and fill the matrix by columns.
m1 = matrix(1:20, nrow=5, ncol=4)
print("5 × 4 matrix:")
print(m1)
cells = c(1,3,5,7,8,9,11,12,14)
rnames = c("Row1", "Row2", "Row3")
cnames = c("Col1", "Col2", "Col3")
m2 = matrix(cells, nrow=3, ncol=3, byrow=TRUE, dimnames=list(rnames, cnames))
print("3 × 3 matrix with labels, filled by rows: ")
print(m2)
print("3 × 3 matrix with labels, filled by columns: ")
m3 = matrix(cells, nrow=3, ncol=3, byrow=FALSE, dimnames=list(rnames, cnames))
print(m3)

# 17. Write a R program to create an array, passing in a vector of values and a vector of dimensions.
# Also provide names for each dimension.
a =  array(
  6:30,
  dim = c(4, 3, 2),
  dimnames = list(
    c("Col1", "Col2", "Col3", "Col4"),
    c("Row1", "Row2", "Row3"),
    c("Part1", "Part2")
  )
)
print(a)

# 18. Write a R program to create an array with three columns, three rows, and two "tables"
# taking two  vectors as input to the array.  Print the array.
v1 = c(1, 3, 5, 7)
v2 = c(2, 4, 6, 8, 10)
arra1 = array(c(v1, v2),dim = c(3,3,2))
print(arra1)

# 19. Write a R program to create a list of elements using vectors, matrices and a functions.
# Print the content of the list.
l = list(
  c(1, 2, 2, 5, 7, 12),  
  month.abb,
  matrix(c(3, -8, 1, -3), nrow = 2),
  asin
)
print("Content of the list:")
print(l)

# 22. Write a R program to create  bell curve of a random normal distribution.
n = floor(rnorm(10000, 500, 100))
t = table(n)
barplot(t)

# 25. Write a R program to create a Dataframe which contain details of 5 employees and display the details.
Employees = data.frame(Name=c("Anastasia S","Dima R","Katherine S", "JAMES A","LAURA MARTIN"),
                       Gender=c("M","M","F","F","M"),
                       Age=c(23,22,25,26,32),
                       Designation=c("Clerk","Manager","Exective","CEO","ASSISTANT"),
                       SSN=c("123-34-2346","123-44-779","556-24-433","123-98-987","679-77-576")
)
print("Details of the employees:")                      
print(Employees)

# 26. Write a R program to create a Data Frames which contain details of 5 employees and display summary of the data.
Employees = data.frame(Name=c("Anastasia S","Dima R","Katherine S", "JAMES A","LAURA MARTIN"),
                       Gender=c("M","M","F","F","M"),
                       Age=c(23,22,25,26,32),
                       Designation=c("Clerk","Manager","Exective","CEO","ASSISTANT"),
                       SSN=c("123-34-2346","123-44-779","556-24-433","123-98-987","679-77-576")
)
print("Summary of the data:")                      
print(summary(Employees))



