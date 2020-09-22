# 3. Write a R program to append value to a given empty vector.
vector = c()
values = c(0,1,2,3,4,5,6,7,8,9)
for (i in 1:length(values))
  vector[i] <- values[i]
print(vector)

# 6. Write a R program to find Sum, Mean and Product of a Vector.
x = c(10, 20, 30)
print("Sum:")
print(sum(x))
print("Mean:")
print(mean(x))  
print("Product:")
print(prod(x))

# 7. Write a R program to find Sum, Mean and Product of a Vector, ignore element like NA or NaN.
x = c(10, NULL, 20, 30, NA)
print("Sum:")
#ignore NA and NaN values
print(sum(x, na.rm=TRUE))
print("Mean:")
print(mean(x, na.rm=TRUE))  
print("Product:")
print(prod(x, na.rm=TRUE))

# 8. Write a R program to find the minimum and the maximum of a Vector.
x = c(10, 20, 30, 25, 9, 26)
print("Original Vectors:")
print(x)
print("Maximum value of the above Vector:")
print(max(x))
print("Minimum value of the above Vector:")
print(min(x))

# 9. Write a R program to sort a Vector in ascending and descending order
x = c(10, 20, 30, 25, 9, 26)
print("Original Vectors:")
print(x)
print("Sort in ascending order:")
print(sort(x))
print("Sort in descending order:")
print(sort(x, decreasing=TRUE))

# 10. Write a R program to test whether a given vector contains a specified element.
x = c(10, 20, 30, 25, 9, 26)
print("Original Vectors:")
print(x)
print("Test whether above vector contains 25:")
print(is.element(25, x))
print("Test whether above vector contains 56:")
print(is.element(56, x))

# 12. Write a R program to access the last value in a given vector
x = c(10, 20, 30, 20, 20, 25, 9, 26)
print("Original Vectors:")
print(x)
print("Access the last value of the said vector:")
print(tail(x, n=1))

# 13. Write a R program to find second highest value in a given vector.
x = c(10, 20, 30, 20, 20, 25, 9, 26)
print("Original Vectors:")
print(x)
print("Find second highest value in a given vector:")
l = length(x)
print(sort(x, partial = l-1)[l-1])

# 14. Write a R program to find nth highest value in a given vector.
x = c(10, 20, 30, 20, 20, 25, 9, 26)
print("Original Vectors:")
print(x)
print("nth highest value in a given vector:")
print("n = 1")
n = 1
print(sort(x, TRUE)[n])

# 16. Write a R program to convert given dataframe column(s) to a vector.
dfc1 = c(1, 2, 3, 4, 5)
dfc2 = c(6, 7, 8, 9, 10)
dfc3 = c(11, 12, 13, 14, 15)
dfc4 = c(16, 17, 18, 19, 20)
v <- data.frame(dfc1=1:5, dfc2=6:10, dfc3=11:15, dfc4=16:20)
print(v)

# 20. Write a R program to reverse the order of given vector.
v = c(0, 10, 10, 10, 20, 30, 40, 40, 40, 50, 60)
print("Original vector-1:")
print(v)
rv = rev(v)
print("The same vector in reverse order:")
print(rv)

# 23. Write a R program to convert two columns of a data frame to a named vector.
df = data.frame(code = c("R","G","W","B"), 
                name = c("Red", "Green", "White", "Black")
)
print("Original vector:")
print(df)
result = setNames(as.character(df$name), df$code)
print(result)