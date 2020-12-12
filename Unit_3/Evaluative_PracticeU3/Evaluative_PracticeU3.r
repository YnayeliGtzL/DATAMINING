# EVAUATIVE PRACTICE UNIT 3

getwd()
setwd("C:/Users/yurid/OneDrive/Documentos/Escuela/2_Mineria de datos/Unit_3")
getwd()

dataset = read.csv('Social_Network_Ads.csv')
dataset = dataset[3:5]

dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))
