# EVAUATIVE PRACTICE UNIT 3

getwd()
setwd("C:/Users/yurid/OneDrive/Documentos/Escuela/2_Mineria de datos/Unit_3")
getwd()

dataset = read.csv('Social_Network_Ads.csv')
dataset = dataset[3:5]

dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))

library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)


training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])


#install.packages('e1071')
library(e1071)
classifier = naiveBayes(formula = Purchased ~ .,
                        data = training_set,
                        type = 'C-classification',
                        kernel = 'linear')

y_pred = predict(classifier, newdata = test_set[-3])
y_pred

cm = table(test_set[, 3], y_pred)
cm
# Visualising training
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