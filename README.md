
**DATAMINING**

**Content**

Table of contents

- [Unit 1](#unit-1)
  - [Practice 1](#practice-1)
  - [Practice 2](#practice-2)
  - [Practice 3](#practice-3)
  - [Investigation](#investigation)
    - [Pair Coding](#pair-coding)
    - [Pair Coding 2](#pair-coding-2)
  - [Evaluative Practice](#evaluative-practice)
    - [Scatter plot by country](#scatter-plot-by-country)
    - [Scatter plot by regions](#scatter-plot-by-regions)
      - [Years comparison](#years-comparison)
- [Unit 3](#unit-3)
  - [Practice 1](#practice-1-1)
    - [BackwardElimination](#backwardelimination)
  - [Practice 1 -1](#practice-1--1)
    - [Simple Logistic Regression](#simple-logistic-regression)
  - [Practice 2](#practice-2-1)
    - [Logistic Regression](#logistic-regression)
  - [Practice 3](#practice-3-1)
    - [Multiple Linear Regression](#multiple-linear-regression)
  - [Practice 4](#practice-4)
    - [Decision Tree](#decision-tree)
  - [Practice 5](#practice-5)
    - [Random Forest Classification](#random-forest-classification)
  - [Practice 6](#practice-6)
    - [KNN](#knn)
  - [Practice 7](#practice-7)
    - [SVM](#svm)
  - [Homework](#homework)
    - [Machine Learning](#machine-learning)
    - [Machine Learning](#machine-learning-1)
  - [Evaluative Practice](#evaluative-practice-1)
    - [Introduccion](#introduccion)
    - [Code](#code)
    - [Data visualization](#data-visualization)
    - [Interpretation of the results](#interpretation-of-the-results)
    - [Conclution](#conclution)

<div id='pr1' />

# Unit 1

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

```r
na.fail ()
```

> 2.  Returns a vector of the size of the first variable with the elements that are in the second

```r
match (,)
```

> 3.  Calculation of combinations in k with n repetitions formula n! / [(n-k)! k!]

```r
choose (n, k)
```

> 4.  Returns the average of the elements

```r
mean ()
```

> 5.  Returns the median of the elements

```r
median ()
```

> 6.  Reverse the order of elements

```r
rev ()
```

> 7.  Sort the elements of x in ascending order

```r
sort ()
```

> 8.  Align the elements of x

```r
rank ()
```

> 9.  Returns a similar object but suppresses duplicate elements

```r
unique ()
```

> 10. Organize data on y-axis ordered by x

```r
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

Scenario: You are a Data Scientist working for a consulting firm.
One of your colleagues from the Auditing Department has asked you
to help them assess the financial statement of organization X.
You have been supplied with two vector of data: mounthly revenue and
expenses for the financial year in quiestion. Your task is to calculate
the following financial matrics:
>- profit for each mounth
>- profit after tax for each month (the tax rate is 30%)
>- profit margin for each month - equal to profit after tax divided by revenue
>- good months - where the profit after tax was greater than the mean for the year
>- bad months - where the profit after tax was less then the mean for years
>- the best month - where the profit after tax was max for the year
>- the worst month - where the profit after tax was min for the year
>All results need to be presented as vectors. 
Results for dollar values need to be calculate with $0.01 precision, but need to be presented in Units of $1,000(i.e. 1k) with no decimal point. 

Results for the profit margin ratio needed to be presented in units of % with no
decimal points. 
>Note: Your collegue has warned you that it is okay for tax for any given month to be
negative (in accounting terms, negative tax translates into a deferred tax asset). 

Hint 1 Use:
- round()
- mean()
- max()
- min()


```r
>Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)
```
**Solution**

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
```r
good.months <- profit.after.tax > mean_pat
good.months
```
>Bad Months Are The Opposite Of Good Months !
```r
bad.months <- !good.months
bad.months
```
>The Best Month Is Where Profit After Tax Was Equal To The Maximum
```r
best.month <- profit.after.tax == max(profit.after.tax)
best.month
```
>The Worst Month Is Where Profit After Tax Was Equal To The Minimum
```r
worst.month <- profit.after.tax == min(profit.after.tax)
worst.month
```
>Convert All Calculations To Units Of One Thousand Dollars
```r
revenue.1000 <- round(revenue / 1000, 0)
expenses.1000 <- round(expenses / 1000, 0)
profit.1000 <- round(profit / 1000, 0)
profit.after.tax.1000 <- round(profit.after.tax / 1000, 0)
```
>Print Results
```r
revenue.1000
expenses.1000
profit.1000
profit.after.tax.1000
profit.margin
good.months
bad.months
best.month
worst.month
```
>BONUS:
>Preview Of What's Coming In The Next Section
>Print The Matrix
```r
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

M
```
<div id='in3'/>

## Investigation
### Pair Coding
In this small investigation we will see the concept of pair coding because it was not found as such, the concept of pair programming or pair programming is seen, in the breakdown of the investigation the benefits of using this type of programming are revealed and the difficulties of this.
-- Gutierrez Luna Yuridia Nayeli
[Full Version](https://github.com/YnayeliGtzL/DATAMINING/blob/Unit_1/Investigations/PairCoding_Gutierrez.md)
### Pair Coding 2
The method known as pair programming (in Spanish, programming in pairs)It is mainly used in agile software development and, more specifically, inextreme programming (XP). Pair programming specifies that there are always twopeople working on the code at the same time and that, as far as possible,they sit together. One is in charge of writing the code and the other of supervising inreal time. At the same time, they are constantly exchanging impressions:they discuss problems, find solutions and develop creative ideas.
-- Bermudez Ornelas Alberto
[Full Version](https://github.com/YnayeliGtzL/DATAMINING/blob/Unit_1/Investigations/PairCoding_Bermudez.md)
## Evaluative Practice
```r
Country_Code <- c("ABW","AFG","AGO","ALB","ARE","ARG","ARM","ATG","AUS","AUT","AZE","BDI","BEL","BEN","BFA","BGD","BGR","BHR","BHS","BIH","BLR","BLZ","BOL","BRA","BRB","BRN","BTN","BWA","CAF","CAN","CHE","CHL","CHN","CIV","CMR","COG","COL","COM","CPV","CRI","CUB","CYP","CZE","DEU","DJI","DNK","DOM","DZA","ECU","EGY","ERI","ESP","EST","ETH","FIN","FJI","FRA","FSM","GAB","GBR","GEO","GHA","GIN","GMB","GNB","GNQ","GRC","GRD","GTM","GUM","GUY","HKG","HND","HRV","HTI","HUN","IDN","IND","IRL","IRN","IRQ","ISL","ITA","JAM","JOR","JPN","KAZ","KEN","KGZ","KHM","KIR","KOR","KWT","LAO","LBN","LBR","LBY","LCA","LKA","LSO","LTU","LUX","LVA","MAC","MAR","MDA","MDG","MDV","MEX","MKD","MLI","MLT","MMR","MNE","MNG","MOZ","MRT","MUS","MWI","MYS","NAM","NCL","NER","NGA","NIC","NLD","NOR","NPL","NZL","OMN","PAK","PAN","PER","PHL","PNG","POL","PRI","PRT","PRY","PYF","QAT","ROU","RUS","RWA","SAU","SDN","SEN","SGP","SLB","SLE","SLV","SOM","SSD","STP","SUR","SVK","SVN","SWE","SWZ","SYR","TCD","TGO","THA","TJK","TKM","TLS","TON","TTO","TUN","TUR","TZA","UGA","UKR","URY","USA","UZB","VCT","VEN","VIR","VNM","VUT","WSM","YEM","ZAF","COD","ZMB","ZWE")
Life_Expectancy_At_Birth_1960 <- c(65.5693658536586,32.328512195122,32.9848292682927,62.2543658536585,52.2432195121951,65.2155365853659,65.8634634146342,61.7827317073171,70.8170731707317,68.5856097560976,60.836243902439,41.2360487804878,69.7019512195122,37.2782682926829,34.4779024390244,45.8293170731707,69.2475609756098,52.0893658536585,62.7290487804878,60.2762195121951,67.7080975609756,59.9613658536585,42.1183170731707,54.2054634146342,60.7380487804878,62.5003658536585,32.3593658536585,50.5477317073171,36.4826341463415,71.1331707317073,71.3134146341463,57.4582926829268,43.4658048780488,36.8724146341463,41.523756097561,48.5816341463415,56.716756097561,41.4424390243903,48.8564146341463,60.5761951219512,63.9046585365854,69.5939268292683,70.3487804878049,69.3129512195122,44.0212682926829,72.1765853658537,51.8452682926829,46.1351219512195,53.215,48.0137073170732,37.3629024390244,69.1092682926829,67.9059756097561,38.4057073170732,68.819756097561,55.9584878048781,69.8682926829268,57.5865853658537,39.5701219512195,71.1268292682927,63.4318536585366,45.8314634146342,34.8863902439024,32.0422195121951,37.8404390243902,36.7330487804878,68.1639024390244,59.8159268292683,45.5316341463415,61.2263414634146,60.2787317073171,66.9997073170732,46.2883170731707,64.6086585365854,42.1000975609756,68.0031707317073,48.6403170731707,41.1719512195122,69.691756097561,44.945512195122,48.0306829268293,73.4286585365854,69.1239024390244,64.1918292682927,52.6852682926829,67.6660975609756,58.3675853658537,46.3624146341463,56.1280731707317,41.2320243902439,49.2159756097561,53.0013170731707,60.3479512195122,43.2044634146342,63.2801219512195,34.7831707317073,42.6411951219512,57.303756097561,59.7471463414634,46.5107073170732,69.8473170731707,68.4463902439024,69.7868292682927,64.6609268292683,48.4466341463415,61.8127804878049,39.9746829268293,37.2686341463415,57.0656341463415,60.6228048780488,28.2116097560976,67.6017804878049,42.7363902439024,63.7056097560976,48.3688048780488,35.0037073170732,43.4830975609756,58.7452195121951,37.7736341463415,59.4753414634146,46.8803902439024,58.6390243902439,35.5150487804878,37.1829512195122,46.9988292682927,73.3926829268293,73.549756097561,35.1708292682927,71.2365853658537,42.6670731707317,45.2904634146342,60.8817073170732,47.6915853658537,57.8119268292683,38.462243902439,67.6804878048781,68.7196097560976,62.8089268292683,63.7937073170732,56.3570487804878,61.2060731707317,65.6424390243903,66.0552926829268,42.2492926829268,45.6662682926829,48.1876341463415,38.206,65.6598292682927,49.3817073170732,30.3315365853659,49.9479268292683,36.9658780487805,31.6767073170732,50.4513658536585,59.6801219512195,69.9759268292683,68.9780487804878,73.0056097560976,44.2337804878049,52.768243902439,38.0161219512195,40.2728292682927,54.6993170731707,56.1535365853659,54.4586829268293,33.7271219512195,61.3645365853659,62.6575853658537,42.009756097561,45.3844146341463,43.6538780487805,43.9835609756098,68.2995365853659,67.8963902439025,69.7707317073171,58.8855365853659,57.7238780487805,59.2851219512195,63.7302195121951,59.0670243902439,46.4874878048781,49.969512195122,34.3638048780488,49.0362926829268,41.0180487804878,45.1098048780488,51.5424634146342)
Life_Expectancy_At_Birth_2013 <- c(75.3286585365854,60.0282682926829,51.8661707317073,77.537243902439,77.1956341463415,75.9860975609756,74.5613658536585,75.7786585365854,82.1975609756098,80.890243902439,70.6931463414634,56.2516097560976,80.3853658536585,59.3120243902439,58.2406341463415,71.245243902439,74.4658536585366,76.5459512195122,75.0735365853659,76.2769268292683,72.4707317073171,69.9820487804878,67.9134390243903,74.1224390243903,75.3339512195122,78.5466585365854,69.1029268292683,64.3608048780488,49.8798780487805,81.4011219512195,82.7487804878049,81.1979268292683,75.3530243902439,51.2084634146342,55.0418048780488,61.6663902439024,73.8097317073171,62.9321707317073,72.9723658536585,79.2252195121951,79.2563902439025,79.9497804878049,78.2780487804878,81.0439024390244,61.6864634146342,80.3024390243903,73.3199024390244,74.5689512195122,75.648512195122,70.9257804878049,63.1778780487805,82.4268292682927,76.4243902439025,63.4421951219512,80.8317073170732,69.9179268292683,81.9682926829268,68.9733902439024,63.8435853658537,80.9560975609756,74.079512195122,61.1420731707317,58.216487804878,59.9992682926829,54.8384146341464,57.2908292682927,80.6341463414634,73.1935609756098,71.4863902439024,78.872512195122,66.3100243902439,83.8317073170732,72.9428536585366,77.1268292682927,62.4011463414634,75.2682926829268,68.7046097560976,67.6604146341463,81.0439024390244,75.1259756097561,69.4716829268293,83.1170731707317,82.290243902439,73.4689268292683,73.9014146341463,83.3319512195122,70.45,60.9537804878049,70.2024390243902,67.7720487804878,65.7665853658537,81.459756097561,74.462756097561,65.687243902439,80.1288780487805,60.5203902439024,71.6576829268293,74.9127073170732,74.2402926829268,49.3314634146342,74.1634146341464,81.7975609756098,73.9804878048781,80.3391463414634,73.7090487804878,68.811512195122,64.6739024390244,76.6026097560976,76.5326585365854,75.1870487804878,57.5351951219512,80.7463414634146,65.6540975609756,74.7583658536585,69.0618048780488,54.641512195122,62.8027073170732,74.46,61.466,74.567512195122,64.3438780487805,77.1219512195122,60.8281463414634,52.4421463414634,74.514756097561,81.1048780487805,81.4512195121951,69.222,81.4073170731707,76.8410487804878,65.9636829268293,77.4192195121951,74.2838536585366,68.1315609756097,62.4491707317073,76.8487804878049,78.7111951219512,80.3731707317073,72.7991707317073,76.3340731707317,78.4184878048781,74.4634146341463,71.0731707317073,63.3948292682927,74.1776341463415,63.1670487804878,65.878756097561,82.3463414634146,67.7189268292683,50.3631219512195,72.4981463414634,55.0230243902439,55.2209024390244,66.259512195122,70.99,76.2609756097561,80.2780487804878,81.7048780487805,48.9379268292683,74.7157804878049,51.1914878048781,59.1323658536585,74.2469268292683,69.4001707317073,65.4565609756098,67.5223658536585,72.6403414634147,70.3052926829268,73.6463414634147,75.1759512195122,64.2918292682927,57.7676829268293,71.159512195122,76.8361951219512,78.8414634146341,68.2275853658537,72.8108780487805,74.0744146341464,79.6243902439024,75.756487804878,71.669243902439,73.2503902439024,63.583512195122,56.7365853658537,58.2719268292683,59.2373658536585,55.633)
```

We open the data from another file
>We start by reading all the data inside an external file and add it to a variable
```r
stats1 <- read.csv(file.choose())
stats1
```
We split the data to years 
>We use the split function to separate the years and add them to a variable. Double [] is used for this, it allows it to be used within a dataframe
```r
años <- split(stats1, stats1$Year)
año.1960=años[[1]]
```
>We verify that the data is as expected
```r
año.1960
```

Creating data frames form the new vectors
>We create a data frame to manipulate the data within the vectors adding only the 1960 data
```r
mydf.1960 <- data.frame( Code= Country_Code, Life.Expectancy.1960 = Life_Expectancy_At_Birth_1960)
```
>We verify that the new vector has the correct data
```r
head(mydf.1960)
mydf.1960
```

Margin the data frames 
>We combine the data from the csv file with the data frame in which we separate by year (1960) through Country.code
```r
merged.1960 <- merge(año.1960, mydf.1960,  by.x = "Country.Code", by.y = "Code")
```
>We check that the data frames have been combined correctly by checking the head and the whole body
```r
head(merged.1960)
merged.1960
```

Calling the library necesary to plot the data
>Before starting to graph we send to call the necessary library to carry out the plots
```r
library(ggplot2)
```


Visualizing the data in a plot 
>We perform the plot to visualize the data as a graph by region
```r
ggplot(merged.1960, aes(x = Fertility.Rate, y = Life.Expectancy.1960, color=Region)) +
  geom_point(aes(color = factor(Region))) + geom_smooth(method=lm, se=FALSE, fullrange=TRUE)
```
> And we do the same but now graphing based on countries
```r
ggplot(merged.1960, aes(x = Fertility.Rate, y = Life.Expectancy.1960, 
color=Country.Name)) +
  geom_point(aes(color = factor(Country.Name))) + 
  geom_smooth(method=lm, se=FALSE, fullrange=TRUE)
```
**2013 year**
We split the data to years 
>The variable of separation of years is used to generate the new variable for the year 2013
```r
año.2013=años[[2]]
año.2013
```
Creating new data frame for the new vectors
> A data frame is created to manipulate the data found in vectors
```r
mydf2 <- data.frame( Code= Country_Code, 
                     Life.Expectancy.2013 = Life_Expectancy_At_Birth_2013)
```
>To confirm that the data was assigned, we show the first values of the data frame and the data frame
```r
head(mydf2)
mydf2
```
The data merged
>To combine both data (year 2013 and the corresponding data) a merged is performed which is joined in the columns of "Country.Code" and "Code"
```r
merged_2013 <- merge(año.2013, mydf2,  by.x = "Country.Code", by.y = "Code")
```
To confirm that the data was correctly assigned, we show the first values of the new data frame that was generated with the merge and we show the merge.
```r
head(merged_2013)
merged_2013
```
Visualizing the data in plot
> To visualize the data in the form of a graph, we create a plot function, which we assign the merge data that we created previously, we assign the Fertility Rate data to the x-axis and the Life Expectancy data to the y-axis, to differentiate them in the color attribute we assign to separate them by Region.
```r
qplot(data = merged_2013, x =Fertility.Rate , y = Life.Expectancy.2013,
      color = Region, size=I(3), shape=I(19), alpha =I(.4), 
      main = "Fertility for Life Expectancy group by Region 2013")
```
>To visualize the data in the form of a graph, we create a plot function, which we assign the merge data that we created previously, we assign the Fertility Rate data to the x-axis and the Life Expectancy data to the y-axis, to differentiate them in the color attribute we assign to separate them by Country Name
```r
qplot(data = merged_2013, x =Fertility.Rate , y = Life.Expectancy.2013,
      color = Country.Name, size=I(3), shape=I(19), alpha =I(.4), 
      main = "Fertility for Life Expectancy group by Country 2013")
```
### Scatter plot by country
Due to the enormous number of countries from which data are extracted when making this grouping, the symbology becomes extensive and the plot of this relationship appears small
>1960

![img](https://github.com/YnayeliGtzL/DATAMINING/blob/Unit_1/Evaluative_Practice/Countryplot1960.png?raw=true)

>2013

![img](https://github.com/YnayeliGtzL/DATAMINING/blob/Unit_1/Evaluative_Practice/Contryplot2013.png?raw=true)
### Scatter plot by regions

1960
Some important data that we can take from the graph is that the countries of the African region have a very high fertility rate but have a fairly low life expectancy, the vast majority hovering between 35 and 50. On the other hand, we have the region of Europe where they have a reduced fertility rate but a higher life expectancy circulating between 65 to 75. What we can say is that the higher the socioeconomic level in the region, the higher the life expectancy. will be
![img](https://github.com/YnayeliGtzL/DATAMINING/blob/Unit_1/Evaluative_Practice/Regionplot1960.png?raw=true)

The plot shows us this scatter plot in which we can visualize the data grouped by colors of the data regions.
When analyzing the graph we can see that the country with the highest life expectancy is Europe because the culture of this is very different from the rest of the others, compared to Africa we have the two extremes in one the children are from one to two and while that in Africa they are 4 to 6 or more.
Life expectancy also has these extremes in which we see Europe with a life expectancy of 70 years or more, while in Africa it is not greater than 70, if perhaps some scattered little optical data that we could highlight.
![img](https://github.com/YnayeliGtzL/DATAMINING/blob/Unit_1/Evaluative_Practice/Regionplot2013.png?raw=true)

#### Years comparison


The biggest change we can see is that in 2013 the fertility rate of all regions dropped considerably, Africa is still the highest but we can see a reduction. This event can be attributed to the level of education and the socioeconomic status of each region. The constant growth of countries makes societies evolve, we can clearly see this in the 1960 graph where most of the regions are below 60 years with a fairly high fertility rate.

# Unit 3
___

## Practice 1

### BackwardElimination

Analyze the following "backwardElimination" function

Code

>The function is named and two parameters (x and sl) are assigned to it.
```r
backwardElimination <- function (x, sl) {
```
>The variable numVar is added and its value will be the length of x. This function is intended to see the entire number of data in the vector. X represents the dataset.
```r
  numVars = length (x)
```
>In the for it says that for each value within the vector of continuous data starting from its first value, the following functions will be performed.
```r
  for (i in c (1: numVars)) {
```
>Starting by initializing the regressor variable, which will contain the values ​​of the linear regression model created together with its respective formula, which says that it will have the entire profit column and its data will be extracted from X.
```r
    regressor = lm (formula = Profit ~., data = x)
```
>In turn, the variable maxVar is created, which will have a vector with the maximum coefficient of the summation of data within regressor, which is within the matrix. It starts from the second value of the length of the values ​​which is numVars and the column of the p-value.
 ```r
    maxVar = max (coef (summary (regressor)) [c (2: numVars), "Pr (> | t |)"])
```
>This value is obtained, an if is performed saying that if the maximum coefficient value is greater than sl (our parameter which represents the p-value we are looking for) then the vector that has the same value as the maxVar variable will be searched and saved that indicator within j.
```r
    if (maxVar> sl) {
      j = which (coef (summary (regressor)) [c (2: numVars), "Pr (> | t |)"] == maxVar)
```
>Then we eliminate vector j from our dataset which is X.
```r
      x = x [, -j]
    }
```

>Finally, we subtract one unit from the length of our dataset, which is numVars from the for, and we return the sum of all the values ​​inside regressor so that the cycle continues until we are left with pure columns with the desired p-value.
```r
    numVars = numVars - 1
  }
  return (summary (regressor))
}
```
**Conclution**

With this small piece of code we can more efficiently search for the best values for our prediction, It is probably faster just to remove the values that we see but when we talk about thousands of factors within a database it becomes very exhaustive to make one For this reason, this function is extremely important as it will save us hours of work.

## Practice 1 -1

### Simple Logistic Regression
In this practice we will explain how to display a simple linear regression.

Code

>We load the data into our dataset variable
```r
getwd()
setwd("C:/Users/yurid/Documents/RepoDataMining/DataMining/MachineLearning/SimpleLinearRegression")
getwd()

dataset <- read.csv('Salary_Data.csv')
```
>We import the caTools library, we assign the seed to create random number rales, to split we assign the values to pass them in a Boolean way, we assign our training variables and test the values ⅔ will go to training and the el will go to test
```r
library(caTools)
set.seed(123)
split <- sample.split(dataset$Salary, SplitRatio = 2/3)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)
```
>We create a variable where we will load the data from our dataset taking into account salary and years of experience for the regression, we print a summary to know the data
```r
regressor = lm(formula = Salary ~ YearsExperience,
               data = dataset)
summary(regressor)
```
>We load predict to the variable y_pred to be able to obtain the prediction of the training data with the new test data
```r
y_pred = predict(regressor, newdata = test_set)
```
>We import the ggplot2 library, we plot the points with our training data from the YearsExperience and Saraly columns, we assign the color red, the prediction will be blue, this is given by the training data, and finally we name the plot. axes.
```r
library(ggplot2)
ggplot() +
  geom_point(aes(x=training_set$YearsExperience, y=training_set$Salary),
             color = 'red') +
  geom_line(aes(x = training_set$YearsExperience, y = predict(regressor, newdata = training_set)),
            color = 'blue') +
  ggtitle('Salary vs Experience (Training Set)') +
  xlab('Years of experience') +
  ylab('Salary')
```
>We made the same plot with the only change that now the data will be taken from ⅓ that was left as test data.
```r
ggplot() +
  geom_point(aes(x=test_set$YearsExperience, y=test_set$Salary),
             color = 'red') +
  geom_line(aes(x = training_set$YearsExperience, y = predict(regressor, newdata = training_set)),
            color = 'blue') +
  ggtitle('Salary vs Experience (Test Set)') +
  xlab('Years of experience') +
  ylab('Salary')
```
**Conclution**

This type of practical-homework helps us (in particular) to review everything they tell us in class since sometimes we are not at 100 or we get distracted.
Prediction is useful for many things and having tools that facilitate this type of situation is much easier.
We can see that the trend line along with the data is in good direction.

## Practice 2

### Logistic Regression
In this practice will explain the data visualization process for logistic regression

Code

>The data is loaded into a variable, then it is chosen from those values ​​thatwe have only columns 3 to 5
```r
getwd()
setwd("C:/Users/yurid/Documents/RepoDataMining/DataMining/MachineLearning/LogisticRegression")
getwd()

dataset <- read.csv('Social_Network_Ads.csv')
dataset <- dataset[, 3:5]
```
 >The library that we will use caTools is imported, this library helps us to usevarious basic functions without rounding errors.

 >a. We tell the seed what it will use\
 b. We do a split to change our values, these will be  Boolean format, 75 is assigned to training and 25 to test data\
  c. From the variable that was created previously, the filter is made for only Include the necessary data at each point
```r
library(caTools)
set.seed(123)
split <- sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)
```

>For our training and test data we will only use thecolumns 1 to 2 and we assign a scale to make it easy to interpret later
```r
training_set[, 1:2] <- scale(training_set[, 1:2])
test_set[, 1:2] <- scale(test_set[, 1:2])
```

>We create a variable where we will adjust the regression in formula we give it the value of our column Purchased, family binomial and we put the data oftraining
```r
classifier = glm(formula = Purchased ~ .,
                 family = binomial,
                 data = training_set)
```

>We create a variable and it is assigned the prediction of our variablead justed above that we print, it is validated if our variable is greater than .5, 1 and 0,we print the matrix
```r
prob_pred = predict(classifier, type = 'response', newdata = test_set[-3])
prob_pred
y_pred = ifelse(prob_pred > 0.5, 1, 0)
y_pred
```

>We create a variable in which we are going to place the difference between the dataset of thetest data and prediction data, printed gives us an effectiveness of 83%
```r
cm = table(test_set[, 3], y_pred)
cm
```

>We load the ggplot2 library to plot our dataframes from both training as a test

>a. The first plot is done with the Estimated Salary and Purchased data\
b. The second plot is done with Age and Purchased
```r
library(ggplot2)
ggplot(training_set, aes(x=EstimatedSalary, y=Purchased)) + geom_point() + 
  stat_smooth(method="glm", method.args=list(family="binomial"), se=FALSE)
 
ggplot(training_set, aes(x=Age, y=Purchased)) + geom_point() + 
  stat_smooth(method="glm", method.args=list(family="binomial"), se=FALSE)
```

>A plot is created with the values ​​of the test dataset taking the data from EstimatedSalary and Purchased

>a. A plot is created with the dataset values ​​taking the Age and Purchased
```r
ggplot(test_set, aes(x=EstimatedSalary, y=Purchased)) + geom_point() + 
  stat_smooth(method="glm", method.args=list(family="binomial"), se=FALSE)
 
ggplot(test_set, aes(x=Age, y=Purchased)) + geom_point() + 
  stat_smooth(method="glm", method.args=list(family="binomial"), se=FALSE)
```

>We import the ElemStatLearn library this library contains functions that help for learning data mining
```r
library(ElemStatLearn)
```

>We create a variable where we will load the test data, we create two variables in which the first column will be used and the second column second column as min and max value of the same columns by 0.01

>a. We create a new dataset and assign it the combined values ​​of our previous variables\
b. We place the header name that our dataframe will havec. We create a variable where we will save the prediction of our dataset classifier with the new grid_set dataset\
d. In a new variable we compare with if the values ​​of our variable of prediction that are greater than 0.5,1,0\
e. We plot our datasets that we created earlier,we give a name to the plot, name the axes and we assign what values ​​will gofor each axis\
F. The contour are creates a line that divides our two datasets, this taking into account our matrix where the verification ofgreater than 0.5,1 and 0 taking the length of our datasetg. With points we are going to differentiate our values, the first is for the dataof the combination of the two datasets in column 1 and 2, and the second isfor the set data which is originally our training datataking into account column 3
```r
set = training_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
prob_set = predict(classifier, type = 'response', newdata = grid_set)
y_grid = ifelse(prob_set > 0.5, 1, 0)
plot(set[, -3],
     main = 'Logistic Regression (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```

For the test data it is the same we only change our dataset that loads us the data and we generate everything the same
```r
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
prob_set = predict(classifier, type = 'response', newdata = grid_set)
y_grid = ifelse(prob_set > 0.5, 1, 0)
plot(set[, -3],
     main = 'Logistic Regression (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```
**Conclution**
I like to know more about groupings and the types that exist, even more The important thing is that with this new professor he has been more affable than those who previously  taught the fundamentals of it.This subject and its functions become interesting instead of tedious


## Practice 3

### Multiple Linear Regression 
In this practice will explain the data visualization process for Multiple linear regression

Code

>We make the location of our workspace and load the data in our dataset
```r
getwd()
setwd("C:/Users/yurid/Documents/RepoDataMining/DataMining/MachineLearning/MultipleLinearRegression")
getwd()
 
# Importing the dataset
dataset <- read.csv('50_Startups.csv')
```
>We make the transformation of the data from string to numeric and show our dataset
```r
dataset$State = factor(dataset$State,
                       levels = c('New York', 'California', 'Florida'),
                       labels = c(1,2,3))
dataset
```

>We import the caTools library and assign the seed, make the transformation of the data to boolean and we separate 80% for training and 20% for testing
```r
library(caTools)
set.seed(123)
split <- sample.split(dataset$Profit, SplitRatio = 0.8)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)
```

>The MultiLiner Regression method is used for our test data and get the summary to see the content of our variable to which we assign the method values
```r
regressor = lm(formula = Profit ~ .,
               data = training_set )
 
summary(regressor)
```
>We make the prediction of the test dataset with the regressor method and we print
```r
y_pred = predict(regressor, newdata = test_set)
y_pred
```

>We perform the MultiLinear Regression method by backward eliminatio model.In the first shows all the columns of our dataset taking incounts the original dataset, in the second the State column is removed and the summary to know the value of the vector
```r
regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend + State,
               data = dataset )
summary(regressor)
 
regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend,
               data = dataset )
summary(regressor)
```

>Because we are using an elimination model certain columns are eliminated to do the regression and the summary of these eliminations is printed anyway
```r
regressor = lm(formula = Profit ~ R.D.Spend + Marketing.Spend,
               data = dataset )
summary(regressor)
 
regressor = lm(formula = Profit ~ R.D.Spend + Marketing.Spend,
               data = dataset )
summary(regressor)
```

>We make the prediction of the regressor variable made with the elimination model and we print
```r
y_pred = predict(regressor, newdata = test_set)
y_pred
```

**Conclution**

 analyzing the data we realized that the points are very close to the line of trend, this means that if there is a relationship between these variables, and more Analyzing the coefficient of determination R2 proves that the analysis is correct.

## Practice 4

### Decision Tree
Decision trees are used from day to day despite the fact that many times we may think not. In this practice we will explain by means of code how decisions are made within the trees and what the visualization of it looks like

Code

>We import data and those assigned to the dataset and filter the columns that we will use in this case they are 3 to 
```r
getwd()
setwd("/home/chris/Documents/itt/Enero_Junio_2020/Mineria_de_datos/DataMining/MachineLearning/DesicionThree")
getwd()
# Importing the dataset
dataset = read.csv('Social_Network_Ads.csv')
dataset = dataset[3:5]
```

>We carry out the transformation of data to factor of the column assigning values binaries to make it easier to handle data
```r
dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))
```

>We import the caTools library, assign the seed, create our split where We will take the data from Purchased, assigning 75% of the data to training and 25% to test
```r
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)
```

>We scale the values ​​that are not the assigned range in the dataset
```r
training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])
```

>we import the rpart library which will help us to see the behavior of the line clustering by the tree model, we create our variable for the model and we tell it what we want to predict within it and the data of where it is going to take it
```r
library(rpart)
classifier = rpart(formula = Purchased ~ .,
                   data = training_set)
```

>Once created the variable y_pred in which we are going to make the prediction with the data of the model and the new data that will be that of the columns not included and by the type of class
```r
y_pred = predict(classifier, newdata = test_set[-3], type = 'class')
y_pred
```

>We assign table to our confusion matrix variable which will have the values of column 3 and the prediction variable and we print the variable cm
```r
cm = table(test_set[, 3], y_pred)
cm
```

>We import ElemStatLear to display the grouping by model trees, we assign the training data to set, then we assign the values ​​for our groups marking the min and max, we assign the columns of which we want to make the decision we add the prediction for later plot this data, we give the plot the columns of the set we want that it takes, we place a name for the plot and a name for the axes of this, with contour we make the division of decision lines, with the first point we say that color the divisions you have of the space and the division line created by contour and at the end the last point what it does is that it colors the points according to the set to assign them the color it should have according to your prediction
```r
library(ElemStatLearn)
set = training_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set, type = 'class')
plot(set[, -3],
     main = 'Decision Tree Classification (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```

>We import ElemStatLear to display the grouping by model trees, we assign set the test data, then assign the values ​​forour groups marking the min and max, we assign the columns of which we want to make the decision we add the prediction and then make the plot of these data, we give the plot the columns of the set that we want it to take,we put a name for the plot and a name for the axes of this, with contourwe make the division of decision lines, with the first point we say to color the divisions it has of the space and the division line created by contour and by final the last point what it does is that it colors according to the set the points to assign them the color it should have according to your prediction
```r
library(ElemStatLearn)
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set, type = 'class')
plot(set[, -3], main = 'Decision Tree Classification (Test set)',
     xlab = 'Age' , ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```

>These two lines display the decisions made by the tree to perform the grouping taking into account our classifier variable which contains the model and training data.
```r
plot(classifier)
text(classifier, cex=0.6)
```
**Conclution**

We can realize the multiple ways that there are in this practice to visualize data if grouping is needed and see the flow of decisions made by the tree so you can perform automatic groupings and in case you need a run of desktop (with few sheets) can be performed.

## Practice 5
### Random Forest Classification
In this practice, an explanation of the code will be made to visualize the data using the randomforest function
Code 
>To get started with this visualization you need the elemStatLearn package. Note (This library is archived for newer versions of r a different way is needed to install)
```r
install.packages('ElemStatLearn')
library(ElemStatLearn)
```
>we grab the training set and add it to a variable
```r
set = training_set
```
>Next, the ranges of the sequences within our filtered data set are marked, which are delimited with the use of the max and min functions and apart the passage of these sequences is marked with a factor of .01 finally they are saved in the variables x1 and x2, which allows us to define the background of our graph.
```r
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
```
>Expand allows us to carry out all the combinations of variables in the dataset. and grid creates a framework for all these combinations of the factors that were provided
```r
grid_set = expand.grid(X1, X2)
```
>to the frame of combinations that we just created we add a column with their respective names
```r
colnames(grid_set) = c('Age', 'EstimatedSalary')
```
>a prediction is made with our data classifier and our already delimited model background
```r
y_grid = predict(classifier, grid_set)
```
>With the plot function we generate a plot of the data of our dataframe set minus the vector -3. We add a legend and its labels and name its limits that had already been made previously with the names of x1 and x2
```r
plot(set[, -3],
     main = 'Random Forest Classification (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
```
>a line is created to an existing graph, which will be our division between green and red, with the numerical matrix of our predictions from the data classification
```r
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
```
>With grid_set we pull all the limits and ranges of the background to be able to assign a color to their space
```r
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
```
>And with this line we color the points of our data set using the ifelse function
```r
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```
>In the following code, exactly the same is done before, but with the difference that now the test set is used instead of the training set
```r
library(ElemStatLearn)
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, grid_set)
plot(set[, -3], main = 'Random Forest Classification (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```
**Conclution**
This type of procedure is very effective for a large enough data set since it manages to classify more precisely, apart from being much more efficient to handle this amount of data compared to the knn method, so much so that even performing the code without counting time, a difference was noted in the data display time. And to finish this algorithm model can maintain its precision even if a large proportion of data is distant.
## Practice 6
### KNN
In this practice, an explanation of the code will be made to visualize the data using the Knn function.

Code

>To get started with this visualization you need the elemStatLearn package. Note (This library is archived for newer versions of r a different way is needed to install)
```r
install.packages('ElemStatLearn')
library(ElemStatLearn)
```
>we grab the training set and add it to a variable
```r
set = training_set
```
>Next, the ranges of the sequences within our filtered data set are marked, which are delimited with the use of the max and min functions and apart the passage of these sequences is marked with a factor of .01 finally they are saved in the variables x1 and x2, which allows us to define the background of our graph.
```r
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
```
>Expand allows us to carry out all the combinations of variables in the dataset. and grid creates a framework for all these combinations of the factors that were provided
```r
grid_set = expand.grid(X1, X2)
```
>to the frame of combinations that we just created we add a column with their respective names
```r
colnames(grid_set) = c('Age', 'EstimatedSalary')
```
>What this function does is that for each row of our test dataframe, the kn vectors of the training set are found and classified by majority vote. cl dictates the factor of true classifications (which are our training set of a specific vector) and with k we say the number of neighbors that are accepted
```r
y_grid = knn(train = training_set[, -3],
             test = grid_set,
             cl = training_set[, 3],
             k = 5)

```
>With the plot function we generate a plot of the data of our dataframe set minus the vector -3. We add a legend and its labels and name its limits that had already been made previously with the names of x1 and x2
```r
plot(set[, -3],
     main = 'K-NN Classifier (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
```
>a line is created to an existing graph, which will be our division between green and red
```r
verde y rojo 
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
```
>With grid_set we pull all the limits and ranges of the background to be able to assign a color to their space
```r
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
```
>And with this line we color the points of our data set using the ifelse function
```r
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```
>In the following code, exactly the same is done before, but with the difference that now the test set is used instead of the training set
```r
library(ElemStatLearn)
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = knn(train = training_set[, -3],
             test = grid_set,
             cl = training_set[, 3],
             k = 5)
plot(set[, -3],
     main = 'K-NN Classifier (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))

```
**Conclution**
It is very interesting to see the use that is given to the different functions to perform this complex data visualization in my opinion. As you can see, our training and test sets are quite similar. where the resemblance can be observed most is in the delimitation of the grid, that is, the background and the created contour. It can also be observed that the points do not have the same concentration of data but they do resemble their position within the test, which gives us to understand that our model is carried out correctly.
## Practice 7
### SVM
In this practice an explanation of the code will be made to visualize the data using the SVM function

Code

>To get started with this visualization you need the elemStatLearn package. Note (This library is archived for newer versions of r a different way is needed to install)
```r
install.packages('ElemStatLearn')
library(ElemStatLearn)
```
>we grab the training set and add it to a variable
```r
set = training_set
```
>Next, the ranges of the sequences within our filtered data set are marked, which are delimited with the use of the max and min functions and apart the passage of these sequences is marked with a factor of .01 finally they are saved in the variables x1 and x2, which allows us to define the background of our graph.
```r
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
```
>Expand allows us to carry out all the combinations of variables in the dataset. and grid creates a framework for all these combinations of the factors that were provided
```r
grid_set = expand.grid(X1, X2)
```
>to the frame of combinations that we just created we add a column with their respective names
```r
colnames(grid_set) = c('Age', 'EstimatedSalary')
```
>a prediction is made with our data classifier and our already delimited model background
```r
y_grid = predict(classifier, newdata = grid_set)
```
>With the plot function we generate a plot of the data of our dataframe set minus the vector -3. We add a legend and its labels and name its limits that had already been made previously with the names of x1 and x2
```r
plot(set[, -3],
     main = 'SVM (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
```
>a line is created to an existing graph, which will be our division between green and red, with the numerical matrix of our predictions from the data classification
```r
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
```
>With grid_set we pull all the limits and ranges of the background to be able to assign a color to their space
```r
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
```
>And with this line we color the points of our data set using the ifelse function
```r
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```
>What differentiates this code from the others is that the SVM algorithm is used in classifying the data, as you can see below. It is used mainly to estimate a data density or for data regression and classification.
```r
classifier = svm(formula = Purchased ~ .,
                 data = training_set,
                 type = 'C-classification',
                 kernel = 'linear')

```
>In the following code, exactly the same is done before, but with the difference that now the test set is used instead of the training set
```r
library(ElemStatLearn)
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set)
plot(set[, -3], main = 'SVM (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))

```

**Conclution**

In conclusion, this type of method is very useful with two binary classes (1 and 2) because it maximizes the possible results. It is also more accurate with the distance between the perimeters of each data class which can lead to a better interpretation of the data.


## Homework
### Machine Learning
This homework is three questions about the main topic and the analysis of a visual representation of simple lienar regression
<div align="right">
- Gutierrez Luna Yuridia Nayeli
</div>

[Full Version](Unit_3\Homeworks\T1U3_16212353.md)

### Machine Learning
In this Homework, some basic questions about linear regression and machine learning were answered and a comparison of the graphs was made.
<div align="right">
- Bermudez Ornelas Alberto
</div>

[Full Version](Unit_3\Homeworks\T1U3_16211976.md)

## Evaluative Practice 


### Introduccion
In this evaluative practice we will implement the grouping by the model of Naive Bayes, this documentation is made in order to have both a physical memory and demonstrate the knowledge acquired through our professor.

### Code
As we have seen in previous practices, the data is loaded and in this case only column 3 to 5 will be used, the change of values ​​is made from the purchased column tovalues ​​of 0 and 1 

```r
getwd()
setwd("C:/Users/yurid/OneDrive/Documentos/Escuela/2_Mineria de datos/Unit_3")
getwd()
 
dataset = read.csv('Social_Network_Ads.csv')
dataset = dataset[3:5]
 
dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))
```

The caTools library is imported, the seed value is added and the transformation of the data in the Purchased column assigning 75% of the data
```r
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)
```

It is assigned to the training variable of the columns that are outside the range of the dataset
```r
training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])
```

Predict the Purchased function based on all columns before this is dataset training with the type, the way in which the data will be grouped and the linear kernel, we assign the prediction of our data through the classifier variable and the new data that will be that of test_set that does not include columns greater than 3,later we create our variable where we will save the confusion matrix with the table function of column 3 and the prediction variable
```r
library(e1071)
classifier = naiveBayes(formula = Purchased ~ .,
                 data = training_set,
                 type = 'C-classification',
                 kernel = 'linear')
 
y_pred = predict(classifier, newdata = test_set[-3])
y_pred
 
cm = table(test_set[, 3], y_pred)
cm
```

We import ElemStatLear for the visualization of the grouping by the naive bayes model, we assign set the training data, then assign the values ​​for our groups marking the min and max, we assign the columns of which we want to do the grouping we add the prediction and then make the plot of these data, we give the plot the columns of the set that we want it to take, we place a name for the plot and name for the axes of this, with contour we make the division of parabolic type, with the first point we say to color the divisions that it has of the space and the division line created by contour and at the end the last point what it does is that colors according to the set the points to assign them the color they should have according to their prediction
```r
library(ElemStatLearn)
set = training_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set)
plot(set[, -3],
     main = 'Naive Bayes (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```

We import ElemStatLear for the visualization of the grouping by the naive bayes model, we assign set the test data, then assign the values ​​for our groups marking the min and max, we assign the columns of which we want to make the grouping we add the prediction to later plot this data, we give it to plot the columns of the set that we want it to take, we put a name for the plot and name for the axes of this, with contour we make the division of parabolic type, with the First point we say to color the divisions you have of the space and the line of division created by contour and at the end the last point what it does is that it colors according to the setthe points to assign them the color they should have according to their prediction.
```r
library(ElemStatLearn)
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set)
plot(set[, -3], main = 'Naive Bayes (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```

### Data visualization

![image](https://drive.google.com/uc?export=view&id=18hrdXU5vqbmsyUfXieS7LJ9A59z3copO)


![image](https://drive.google.com/uc?export=view&id=1OLf8oH_eRPntY81LJ7JJypSRnnkFZBGQ)

### Interpretation of the results
We have an effectiveness of 86% of correctness of the classification of the data which tells us that the other percentage is the red or green dots that are not found assigned correctly in their group.

Another point that we can denote is that as an entrepreneur the volume of data that we are looking for to sell a product is the green area, where we can make a market advertisement looking for that population

### Conclution
It was honestly very interesting to realize during the course of the making of documentation that was exactly identical to previous problems with which have been working most of these only changes the model or the classification of thedata but in essence most are grouped in a similar way which makes it easy to learn and understand since you don't have to memorize so much code, only the elementary. It is important to emphasize that each one has a different probability of error, depending onof the percentage and the amount of data that are assigned for the training of the models.

We can say that the Naive Bayes function is an elegant way to implement this algorithm, apart from that it helps us a lot to visualize the data in a consistent way.