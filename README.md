# DATAMINING

**Content**

Table of contents

- [Practice 1](https://github.com/YnayeliGtzL/DATAMINING/blob/Unit_1/Practice/Practice_1.r)
- [Practice 2](https://github.com/YnayeliGtzL/DATAMINING/blob/Unit_1/Practice/Practice_2.r)
- [Practice 3](https://github.com/YnayeliGtzL/DATAMINING/blob/Unit_1/Practice/Practice_3.R)

<div id='pr1' />

## Practice 1

---

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

> First we initialize the sample size of 100

```r
N <- 100
```

> Then we initialize the counter

```r
C <- 0
```

> Loop for with the sample size and we print i

```r
for(i in rnorm(N, mean= 0, sd=1)){
    print (i);
```

> We check if the iterated variable falls and we increase the counter if the condition is true

```r
    if (i>=-1 && i<=1){
        C<- C+1
        }
    }
```

> At last we return the result and we print

```r
result <- C/N

print (result)
```

<div id='pr2'/>

## Practice 2

---

Functions

Practice find 20 more functions in R and make an example of it.

> 1.  Show an error if there are NA swims

```
na.fail ()
```

> 2.  Returns a vector of the size of the first variable with the elements that are in the second

```
match (,)
```

> 3.  Calculation of combinations in k with n repetitions formula n! / [(n-k)! k!]

```
choose (n, k)
```

> 4.  Returns the average of the elements

```
mean ()
```

> 5.  Returns the median of the elements

```
median ()
```

> 6.  Reverse the order of elements

```
rev ()
```

> 7.  Sort the elements of x in ascending order

```
sort ()
```

> 8.  Align the elements of x

```
rank ()
```

> 9.  Returns a similar object but suppresses duplicate elements

```
unique ()
```

> 10. Organize data on y-axis ordered by x

```
plot ()
```

> 11. Allow to allocate names to the values in the vector

```r
vector <- c(1,2,3)
names(vector)<- c("uno","dos", "tres")
```

> 12. Search and call an data object

```r
get("vector")
```

> 13. Search and call an data object and allow to specify an action in case of not finding the object

```r
get0("vector", ifnotfound = "no disponible")
```

> 14. Return the first value registered in the vector

```r
first(vector)
```

> 15. Return the last value registered in the vector

```r
last(vector)
```

> 16. Creates an expression in R and is stored in x1

```r
x1 <- expression(2^3)
x1
```

> 17. Checks the data class

```r
class(x1)
```

> 18. Evaluates the expression saved

```r
eval(x1)
```

> 19. Creates a sample

```r
set.seed(9562421)
x <- rnorm(1000)
y<- rnorm(1000) + .3 * x
```

> 20. From the plot creates a graph with the density of x

```r
plot(density(x))
```

<div id='pr3'/>

## Practice 3

---

>Scenario: You are a Data Scientist working for a consulting firm.
One of your colleagues from the Auditing Department has asked you
to help them assess the financial statement of organization X.
You have been supplied with two vector of data: mounthly revenue and
expenses for the financial year in quiestion. Your task is to calculate
the following financial matrics:
>
>>- profit for each mounth
>>- profit after tax for each month (the tax rate is 30%)
>>- profit margin for each month - equal to profit after tax divided by revenue
>>- good months - where the profit after tax was greater than the mean for the year
>>- bad months - where the profit after tax was less then the mean for years
>>- the best month - where the profit after tax was max for the year
>>- the worst month - where the profit after tax was min for the year
>
>All results need to be presented as vectors. 
> 
>Results for dollar values need to be calculate with $0.01 precision, but need to be
>presented in Units of $1,000(i.e. 1k) with no decimal point. 
>
>Results for the profit margin ratio needed to be presented in units of % with no
>decimal points. 
>
>>Note: Your collegue has warned you that it is okay for tax for any given month to be
negative (in accounting terms, negative tax translates into a deferred tax asset). 
>
>Hint 1 Use:
>>- round()
>>- mean()
>>- max()
>>- min()
>

```r
>Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)
```
### Solution

>Calculate Profit As The Differences Between Revenue And Expenses
```r
profit <- revenue - expenses
profit
```

>Calculate Tax As 30% Of Profit And Round To 2 Decimal Points
```r
tax <- round(0.30 \* profit, 2)
tax
```

>Calculate Profit Remaining After Tax Is Deducted
```r
profit.after.tax <- profit - tax
profit.after.tax
```

>Calculate The Profit Margin As Profit After Tax Over Revenue
>Round To 2 Decimal Points, Then Multiply By 100 To Get %
```r
profit.margin <- round(profit.after.tax / revenue, 2) \* 100
profit.margin
```

>Calculate The Mean Profit After Tax For The 12 Months
```r
mean_pat <- mean(profit.after.tax)
mean_pat
```
>Find The Months With Above-Mean Profit After Tax
good.months <- profit.after.tax > mean_pat
good.months

>Bad Months Are The Opposite Of Good Months !
bad.months <- !good.months
bad.months

>The Best Month Is Where Profit After Tax Was Equal To The Maximum
best.month <- profit.after.tax == max(profit.after.tax)
best.month

>The Worst Month Is Where Profit After Tax Was Equal To The Minimum
worst.month <- profit.after.tax == min(profit.after.tax)
worst.month

>Convert All Calculations To Units Of One Thousand Dollars
revenue.1000 <- round(revenue / 1000, 0)
expenses.1000 <- round(expenses / 1000, 0)
profit.1000 <- round(profit / 1000, 0)
profit.after.tax.1000 <- round(profit.after.tax / 1000, 0)

>Print Results
revenue.1000
expenses.1000
profit.1000
profit.after.tax.1000
profit.margin
good.months
bad.months
best.month
worst.month

>BONUS:
>Preview Of What's Coming In The Next Section
M <- rbind(
revenue.1000,
expenses.1000,
profit.1000,
profit.after.tax.1000,
profit.margin,
good.months,
bad.months,
best.month,
worst.month
)

>Print The Matrix
M
```