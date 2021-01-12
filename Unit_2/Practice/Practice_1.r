#Functions

#Practice find 5 more  ggplot functions in R and make an example of it.

#Geom bar
ggplot(data=año.1960) + geom_bar(aes(x=Región)) # Generates a bar plotter

#Geo Polygon
ggplot(nz, aes(long, lat, group = group)) +
  geom_polygon(fill = "white", colour = "black")+  #generates a plot in a geometric way based on the data provided
  coord_quickmap()

#Geo Boxplot
ggplot(data = mtcars) + geom_boxplot(aes(x=factor(am), y=mpg))#Create boxes in which data can be grouped, colored, and shown the distribution of the data.

#Facet Grid
ggplot(mtcars, aes(mpg, qsec)) + geom_point(aes(size = hp), alpha = 0.4)
+ facet_grid(factor(cyl)~factor(am)) #creates subplots showing each subsets of data

#Geon violin
ggplot(iris, aes(x=Species, y=Sepal.Width, fill=Species)) +
    geom_violin(alpha=0.6) + #like boxplots, but allows a deeper understanding of density
    labs(title="Iris", 
         subtitle="Distribución del ancho del sépalo por especie", 
         caption="Fuente: Edgar Anderson's Iris Data", 
         y="Ancho del sépalo", 
         x="Especie",
         color=NULL) +
    theme_elegante()

