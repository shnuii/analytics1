#correloggram

# First Correlogram Example

library(corrgram)
corrgram(mtcars, order=TRUE, lower.panel=panel.shade,
         upper.panel=panel.pie, text.panel=panel.txt,
         main="Car Milage Data in PC2/PC1 Order")
cor(mtcars[1:5])
corrgram(mtcars[1:5], order=TRUE, lower.panel=panel.shade,
         upper.panel=panel.pie, text.panel=panel.txt)



#https://www.statmethods.net/advgraphs/correlograms.html


# Second Correlogram Example
library(corrgram)
corrgram(mtcars[1:5], order=TRUE, lower.panel=panel.ellipse,
         upper.panel=panel.pts, text.panel=panel.txt,
         diag.panel=panel.minmax)

# Lattice Package - improves base graphs
library(lattice)
head(df1)
names(df1)
lattice::densityplot(~ df1$sales)
lattice::densityplot(~ df1$sales | df1$coy)
lattice::densityplot(~ df1$sales | df1$coy, layout=c(1,3))
#lattice::densityplot(df1$loc ~ df1$sales | df1$coy, layout=c(1,3))
str(df1)
lattice::bwplot(df1$loc ~ df1$sales | df1$coy, layout=c(1,3))
lattice::xyplot(df1$adtv ~ df1$adweb | df1$loc )
lattice::cloud(df1$adweb ~ df1$salesman * df1$loc )
lattice::dotplot(df1$sales ~ df1$adtv | df1$coy, layout=c(1,3) )
lattice::splom(df1[c(sales, adtv, coy),] )
