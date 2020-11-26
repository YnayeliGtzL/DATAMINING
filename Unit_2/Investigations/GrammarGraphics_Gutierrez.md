**Grammar Graphics**
<div align="justify">

## Introduction

In this research task about grammar in graphing from in R to ggplot2 we will see which are the attributes that are taken into account to be able to plot the data and to be able to differentiate between data and obtain information from our data in stupid.
It is interesting to know that two different types of graphs can be made within the same graph because you separate the data to do this, different geoms are used.
## Development
In the grammar of graphs, they have five basic components from which we can control practically all aspects of a graph. ggplot () implements them in its syntax. Several of the elements are created by default, for example from the data mapping ggplot () creates the scale with its marks and labels. In the case of coordinates, it always takes a Cartesian system by default. In all cases we can subsequently modify these default values.
### Data
It is the dataset that we are going to graph, with all the pertinent information to make the graph.
Coordinate Systems
Describe how geoms does the mapping in the plane of the graph
### Facets
It allows us to split the dataset according to factors to plot in separate bullets.
If what we prefer is to see a graph separated by groups (e.g. for each of the cut types) we must use the facet_wap ​​(formula) option.

```r
gg1 + facet_wrap(- cut, ncol = 3)
```

![image](https://drive.google.com/file/d/18vpl_BL-0v_mzAV4fV8Kd8_FwC9oWCDi/view?usp=sharing)

### A specification of mapping to variables
They can refer to both the axes of the graph (x, y)
as well as other properties such as colors, symbols, sizes, fonts, line types, etc.
In ggplot () they are specified with the arguments passed to aes ().
```r
ggplot (diamons, aes(x=carat, y=price))
```
![img]()
### A coordinate system
- Controls the projection of numeric data to space.
- By default ggplot () creates a Cartesian coordinate system with the x and y axes,
- We can change it to polar, ternary coordinates or cartographic projections.
- It can be modified by adding + coord _ *, where * is any coordinate system included in ggplot () or its extensions.
### A scale (scales)
They help us color (or scale) the data according to different variables. They draw the axes and the legends.
- It controls the relationship between the number series that we are representing and its representation in space.
- By default ggplot () creates a natural scale for the axes in which they extend a little more than the maximum and minimum observations.
  - By default ggplot () places the axes at 0 on the scale.
  - We can change the scale through a transformation, for example, going from natural to logarithmic scale.
- By default ggplot () creates scale marks and labels in closed numbers (units, tens, hundreds, thousands, etc.), depending on the range of our data.
  - You can change the number and location of scale marks and / or labels.
- It can be modified by adding + scale _ * _ °, where * is the axis that we are going to modify and ° the type of scale that we are using: continuous or discrete.
### A statistical transformation (stat)
- It controls the necessary transformation of the data for its representation.
  - For example, you perform frequency counts for a bar graph or histogram.
  - Or more complex transformations like those necessary for a boxplot.
- It does not apply to all graphs and there is the possibility of doing it ourselves and passing the transformed data to ggplot ().
- It can be modified with the argument stat = "*", where * is the transformation we want to perform. stat = identity to not do any transformation and we use it when provided by the user.
### A geometric element (geom)
- It is the element that represents the data on the chart.
- We can use different elements to represent the same data.
  - Or combine several in the same graph.
```r
ggplot(diamonds, aes(x=carat, y=price, color =cut))+ geom_point() + geom_smooth()
```
![img]()
### Full tags (theme)
They are sets of graphical specifications that allow you to control the general appearance of all non-data elements (for example, the background color or the width of the axes)
- ggplot () takes variable names for axes and labels for scales (discrete or continuous)
  - Of the additional mappings (that is, those that do not refer directly to the axes) the legend labels.
```r
gg1<- gg + theme (plot.title= element_text(size=30, face="bold"),
axis.text.x=element_text(size=15),
axis.text.y=element_text(size=15),
axis.title.x=element_text(size=30),
axis.title.y=element_text(size=30))+ 
scale_color_discrete(name="Corte del diamante")
```
![img]()
### Annotations (labs)
- Titles, subtitles, bullets and any other annotation that we want to include will be entered directly by the user.
```r
gg <- ggplot(diamonds, aes(x=carat, y=price,color=cut)) +  geom_point() +labs(title="Diagrama de puntos", x="Tamaño de diamante",y="Precio")
#Visualisation plot 
gg
```
![img]()

## Conclusion
It is interesting to know that with R you have the possibility of making graphs so simple and complex at the same time to perform data analysis and apply data science to extract information and be able to fully exploit the data that is given to us, knowing well the grammar of the graphs to obtain the maximum potential of R.
R allows us to modify and plot our graphs as we indicate it in the layers that it has inside ggplot2 which helps us to make the work dynamic and have only the information we want in our plot.
## References
1. Martin Paladino. (----). Gráficos en R. 2020, de Instituto Mora Sitio web: https://www.institutomora.edu.mx/testU/SitePages/martinpaladino/graficos_con_r_y_ggplot.html
2. Matias Andina. ggplot2. (2018). 2020, de Bookdown Sitio web: https://bookdown.org/matiasandina/R-intro/exploracion-de-datos.html#ggplot2
3. Autor anónimo. (----). TEMA 2. Gráficos ggplot2. 2020, de Máxima Formación Sitio web: https://www.maximaformacion.es/wp-content/themes/maximaformacion/img/Tema2_ggplot2.pdf