#Abrir la ruta correspondiente en donde se guarda el archivo para importar los datos
getwd()
setwd("C:/Users/yurid/OneDrive/Documentos/Escuela/2_Mineria de datos/Unit_2")
getwd()
# Se cargan los datos a un dataframe para su manipulacion

dataset <- read.csv('Project-Data.csv')

#Segunda opcion para cargar los datos y no tener que modificar el codigo
dataset <- read.csv(file.choose())

# Se observa el dataframe para observacion y analisis
summary(dataset)

#Se cargan las librerias necesarias para la manipulacion de los datos
library(ggplot2)

#Para la realizacion de filtros se utilizo la libreria dply
#install.packages("dplyr")
library(dplyr)

#Para cambiar al tipo de letra que necesitamos, instalamos la libreria 
#install.packages("extrafont")

#se carga la libreria de las fuentes
library(extrafont)

#Despues importamos todas las fuentes dentro de nuestro sistema, esto puede cambiar dependiendo tu SO
font_import()

#ejecutamos el comando para visualizar las fuentes y que r las pueda reconocer 
fonts()

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
j <- u + geom_jitter(aes(color=Studio, size= Budget...mill.)) +
  scale_size_continuous(range = c(2, 5),                         
                        trans = scales::exp_trans(base = 1.2))
#Visualizacion de nuestro plot
j
#Agregamos boxplot para agrupar por genero  y Gross colocando una transparencia media
g <-j + geom_boxplot(alpha=0.2,  outlier.colour = NA)
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
              axis.title.y = element_text(color = "Purple", size=15),
              plot.title= element_text(size = 25,hjust=0.5)
              ,text = element_text(family ="Comic Sans MS")
) + labs(size="Budget $ M")
#Visualizacion de nuestro plot
th

