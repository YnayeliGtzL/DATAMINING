# DATAMINING

**Content**

Table of contents 

- [Practice 1](https://github.com/YnayeliGtzL/DATAMINING/blob/Unit_1/Practice/Practice_1.r)
- [Practice 2](https://github.com/YnayeliGtzL/DATAMINING/blob/Unit_1/Practice/Practice_2.r)
- [Practice 3](https://github.com/YnayeliGtzL/DATAMINING/blob/Unit_1/Practice/Practice_3.R)

<div id='pr1' />

  ## Practice 1

Test the Law Of Large Numbers for N random normally distributed numbers with mean = 0, stdev=1

Create an R script that will count how many of these numbers fall between -1 and 1 and divide by the total quantity of N
You know that E(X) = 68.2%
Check that Mean(Xn)->E(X) as you rerun your script while increasing N

Hint:
1. Initialize sample size
2. Initialize counter
3. loop for(i in rnorm(size))
4. Check if the iterated variable falls
5. Increase counter if the condition is true
6. return a result <- counter / N
```
N <- 100
C <- 0

for(i in rnorm(N, mean= 0, sd=1)){
    print (i);
    if (i>=-1 && i<=1){
        C<- C+1
        }
    }
result <- C/N

print (result)
``` 

<div id='pr2'/>
## Practice 2
Functions

Practice find 20 more functions in R and make an example of it.
1. Show an error if there are NA swims
```
na.fail ()
```
2. Returns a vector of the size of the first variable with the elements that are in the second
```
match (,)
```
3. Calculation of combinations in k with n repetitions formula n! / [(n-k)! k!]
```
choose (n, k)
```
4. Returns the average of the elements
```
mean () 
```
1. Returns the median of the elements
```
median ()
``` 
6. Reverse the order of elements
```
rev ()
``` 
7. Sort the elements of x in ascending order
```
sort () 
```
8. Align the elements of x
```
rank ()
``` 
9. Returns a similar object but suppresses duplicate elements
```
unique ()
``` 
10. Organize data on y-axis ordered by x
```
plot () 
```

11. allow to allocate names to the values in the vector
```
vector <- c(1,2,3) 
names(vector)<- c("uno","dos", "tres") 
```