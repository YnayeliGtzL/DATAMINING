#Abrir la ruta correspondiente en donde se guarda el archivo para importar los datos
getwd()
setwd("C:/Users/yurid/OneDrive/Documentos/Escuela/2_Mineria de datos/Unit_2")
getwd()
# Se cargan los datos a un dataframe para su manipulacion
dataset <- read.csv('Project-Data.csv')
# Se observa el dataframe para observacion y analisis
summary(dataset)
#Se cargan las librerias necesarias para la manipulacion de los datos
library(ggplot2)
#Para la realizacion de filtros se utilizo la libreria dply
#install.packages("dplyr")
library(dplyr)
# Se crea un nuevo dataframe filtrando los datos para solo agregar los generos solicitados
GenreF<-filter(dataset, Genre %in% c("action","adventure", 
                                     "animation","comedy", "drama"))
# A partir del dataframe anterior se vulve a filtrar la informacion para solo tomar los estudios solicitados
StudioF<- filter (GenreF, Studio %in% c ("Buena Vista Studios",
                                          "Fox", "Paramount Pictures",
                                          "Sony", "Universal","WB"))
# Se crea una variable en la cual vamos a cargar el ploteo de los datos que contendra para los ejex X y Y
#que seran genericos para el plot
u <- ggplot(StudioF, aes(x=Genre, y=Gross...US))
#Agregamos la geometria de Jitter para los estudios  
j <- u + geom_jitter(aes(color=Studio, size= Budget...mill.))
#Visualizacion de nuestro plot
j
#Agregamos boxplot para agrupar por genero  y Gross colocando una transparencia media
g <-j + geom_boxplot(aes(x=Genre, y= Gross...US, alpha=0.5)) 
#Visualizacion de nuestro plot
g
#Colocamos el titulo de nuestro plot
t <-g + ggtitle("Domestic Gross % by Genre")
#Visualizacion de nuestro plot
t
#Colocamos el nombre de los ejes X y Y
e <- t + xlab("Genre") + ylab("Gross % US") 
#Visualizacion de nuestro plot
e
#Añadimos el tema para los labels
th<-e + theme(axis.title.x = element_text(color = "Purple", size=15),
        axis.title.y = element_text(color = "Purple", size=15))
#Visualizacion de nuestro plot
th
