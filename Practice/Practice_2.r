#Functions

#Practice find 20 more functions in R and make an example of it.
#one
na.fail () #Show an error if there are NA swims
#two
match (,) # Returns a vector of the size of the first variable with the elements that are in the second
#3
choose (n, k) #Calculation of combinations in k with n repetitions formula n! / [(n-k)! k!]
#4
mean () #Returns the average of the elements
#5
median () #Returns the median of the elements
# 6
rev () #Reverse the order of elements
# 7
sort () # Sort the elements of x in ascending order
# 8
rank () # Align the elements of x
# 9
unique () # Returns a similar object but suppresses duplicate elements
# 10
plot () #Organize data on y-axis ordered by x
#11
vector <- c(1,2,3) 
names(vector)<- c("uno","dos", "tres") #allow to allocate names to the values in the vector
vector
#12
get("vector")   #search and call an data object 
#13
get0("vector", ifnotfound = "no disponible")      #search and call an data object and allow to specify an action in case of not finding the object
#14
first(vector) #return the first value registered in the vector
#15
last(vector)  # return the last value registered in the vector  
#16
x1 <- expression(2^3)  #creates an expression in R and is stored in x1
x1 
#17                               
class(x1)  #checks the data class 
#18
eval(x1)  # evaluates the expression saved
#19
set.seed(9562421)   # creates a sample 
x <- rnorm(1000)
y<- rnorm(1000) + .3 * x
#20
plot(density(x))  #from the plot creates a graph with the density of x



