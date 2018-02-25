#1. Write a program to create barplots for all the categorical columns in mtcars.
mtcars_categocical <- subset(mtcars, select = c("cyl","vs","am","gear","carb"))
View(mtcars_categocical)
par(mfrow=c(1,5))
for(i in 1:5) {
  barplot(mtcars_categocical[,i], main=names(mtcars_categocical)[i])
}
#2. Create a scatterplot matrix by gear types in mtcars dataset. 
data(mtcars)
pairs(gear~., data=mtcars, col=mtcars$gear)

#3. Write a program to create a plot density by class variable. 
install.packages("caret")
library(caret)
data(mtcars)
x <- mtcars[,1:4]
y <- mtcars[,5]
x
y
scales <- list(x=list(relation="free"), y=list(relation="free"))
featurePlot(x=x, y=y, plot="density", scales=scales)

or
install.packages("ggplot")
library(ggplot)
View(mtcars)
ggplot ( data = mtcars) + 
  geom_smooth(mapping = aes( x = mpg,
                             y = disp,
                             group = cyl
                             color = cyl))

