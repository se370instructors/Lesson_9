## SE370 AY22-2
## Lesson 9: Operators, Logicals, and Matrices

# Last class, we introduced you to some simple operators. You should
# know how to add, subtract, multiply, divide, raise to an exponent,
# and find a modulo. You should also be able to assign variables.

# Next, let's dive in to some RELATIONAL OPERATORS
# These are used to compare values. For example...
# is 6 greater than 4?

6 > 4

# What do you see as output?
# ANS: We see TRUE, meaning that the relationship we defined 
# is a true relationship.

# Now, let's check if 27 is greater than 34:

27 > 34

# What is the output?

# Let's try some other logical operators.
# Check if 6.4 is less than 7

6.4 < 7

# Is four greater than or equal to 4.000?

4 >= 4.000

# Is 8.001 less than or equal to 8?

8.001 <= 8

# Now let's see if 5 is equal to the sum of 3 + 1

5 == 3 + 1

# How about 5^2 compared to 25?

5^2 == 25

# Can we do this with characters? 
# Assign the string "cat" to x. 
# Then Check if x is equal to "cat".

x <- "cat"
x == "cat"

# Now, let's see if two values are NOT equal. 
# Check to see if x is not equal to "dog".

x != "dog"

# So, now we've used operators on single values. 
# Let's make a vector and see how they work...

# A VECTOR is the smallest type of data structure in R.
# It contains a sequence of data elements of the same basic
# type. Let's make a vector of the numbers 1 through 4.

vec <- c(1:4)
vec

# The vector should display in the global environment, and it should
# print the values in the console. 
# Can I add to a vector? Let's try to add a 5 on the end.

vec <- append(vec, 5)
vec

# Does this work on multiple vectors? Create a second vector, vec_2,
# that contains the values 6-10. Add it to the end of the original vector.

vec_2 <- c(6:10)
vec <- append(vec, vec_2)
vec

# Now, let's make a vec_3 that contain the following: 1, 2, "three", 4.0.

vec_3 <- c(1, 2, "three", 4.0)
vec_3

# What happened to the data contained in the vector? What data type 
# is it now? 
class(vec_3)
# ANSWER: The values defaulted to strings.

# Can we use operators on vectors? Yes. But let's check out some 
# of the intrices...

vec_4 <- c(1, 2, 1, 2, 2)

# Add vec to vec_4.

vec + vec_4

# Vec has 10 elements. Vec 4 has 5. So, the first 5 values of vec
# are added to the elemts of vec_4 (in order). Then, the elements
# of vec 4 are recycled and added to the second set of elements 
# in vec! 

# Now let's add a scalar to a vector. Add 1 to vec.

vec + 1

# Notice that the scalar was added to every element in the vector.
# Try a few other operations. Raise vec to the second power.
# Then, raise vec to the vec_2 power. Notice the difference in how
# this is applied.

vec^2
vec^vec_4

# Similarly, we can use our relational operators on vectors. 
# Let's see if vec_2 is greater than vec_4. Since we are comparing
# two vectors, it will compare element-by-element.

vec_2 > vec_4

# Now, let's check if vec_2 is greater than 8. This will compare 
# each element of vec_2 to 8.

vec_2 > 8

# Next up, we have LOGICAL OPERATORS. 
# !  is the logical NOT
# & is the element-wise logical AND
# && is the logical AND (looks at only the first element)
# | is the element-wise logical OR
# || is the logical OR (looks at only the first element)

# What's the difference between & and &&?
x <- c(TRUE,FALSE,0,6)
y <- c(FALSE,TRUE,FALSE,TRUE)

# In these vectors, 0 is considered FALSE and
# non-zeros are considered TRUE

x & y 

# Since the 4th element in each are TRUE, it returns TRUE. 
# Every other element is FALSE.

# Now try

x && y

# We only get one output -- FALSE. Because it's only 
# examining the first element.


# FINALLY, let's look at MATRICES.
# A MATRIX is a 2-D data structure in R. It has ROWS and COLUMNS.
# Here's the code to generate a simple matrix

matrix_1 <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)
matrix_1

# You can access the elements in a matrix by using square brackets
# that contain the indices. The first argument is the row number. 
# The second is the column number. 
# Let's access the first row, second column.

matrix_1[1, 2]

<- <- # You can access all the element in a column or a row like this: 

matrix_1[ , 2]
matrix_1[2, ]

# You can name the rows and columns in a matrix using rownames()
# colnames(). Let's rename the rows as "option_1" and "option_2."

rownames(matrix_1) <- c("option_1", "option_2")
matrix_1

# Now, you can also use the row names to access data.
# Make sure that the row name is in quotes, since it contains
# characters:

matrix_1['option_1', 1]

# Let's add a row to our matrix. We can use the function rbind() 
# to add rows to an existing matrix (with the same column layout). 
# Add a 3rd row with the values 5 and 6

matrix_1 <- rbind(matrix_1, c(5, 6))

# We can use cbind() to add columns. Let's add a column with 
# the values 7 and 8 ONLY.

matrix_1 <- cbind(matrix_1, c(7, 8))

# What happened?
# Notice how R still adds the column in...but since the new 
# data is missing a row, it repeats the 7 and gives you a warning.
