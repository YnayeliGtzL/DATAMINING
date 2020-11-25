#Open the corresponding path where the file is saved to import the data
getwd()
setwd("C:/Users/yurid/OneDrive/Documentos/Escuela/2_Mineria de datos/Unit_2")
getwd()
# Data is loaded into a dataframe for manipulation

dataset <- read.csv('Project-Data.csv')

#Second option to load the data and not have to modify the code
dataset <- read.csv(file.choose())

# The dataframe is observed for observation and analysis
summary(dataset)

#The necessary libraries for data manipulation are loaded
library(ggplot2)

#For the realization of filters the dply library was used
#install.packages("dplyr")
library(dplyr)

#To change the font we need, we install the library
#install.packages("extrafont")

#the font library is loaded
library(extrafont)

#After we import all the fonts into our system, this may change depending on your OS
font_import()

#we execute the command to visualize the sources and that r can recognize them
fonts()

# A new dataframe is created filtering the data to only add the requested genres
GenreF<-filter(dataset, Genre %in% c("action","adventure", 
                                     "animation","comedy", "drama"))
#From the previous data frame, the information is filtered again to only take the requested studies
StudioF<- filter (GenreF, Studio %in% c ("Buena Vista Studios",
                                          "Fox", "Paramount Pictures",
                                          "Sony", "Universal","WB"))
# A variable is created in which we will load the plot of the data that it will contain for the X and Y axes that will be generic for the plot.
u <- ggplot(StudioF, aes(x=Genre, y=Gross...US))
#We add the Jitter geometry for the studies
j <- u + geom_jitter(aes(color=Studio, size= Budget...mill.)) +
  scale_size_continuous(range = c(2, 5),                         
                        trans = scales::exp_trans(base = 1.2))
#Visualization of our plot
j
#We add boxplot to group by gender and Gross placing a medium transparency
g <-j + geom_boxplot(alpha=0.2,  outlier.colour = NA)
#Visualization of our plot
g
#We place the title of our plot
t <-g + ggtitle("Domestic Gross % by Genre")
#Visualization of our plot
t
#We put the name of the X and Y axes
e <- t + xlab("Genre") + ylab("Gross % US") 
#Visualization of our plot
e
#We add the theme for the labels
th<-e + theme(axis.title.x = element_text(color = "Purple", size=15),
              axis.title.y = element_text(color = "Purple", size=15),
              plot.title= element_text(size = 25,hjust=0.5)
              ,text = element_text(family ="Comic Sans MS")
) + labs(size="Budget $ M")
#Visualization of our plot
th

