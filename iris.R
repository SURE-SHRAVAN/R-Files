#3a
data("iris")
count <- table(iris$Species)
barplot(count ,
        main = ("number of flowers in each species"),
        col = c("pink" , "yellow" , "lightblue"),
        xlab = "species",
        ylab = "count")

#3b
mean_sepal <- tapply(iris$Sepal.Length , iris$Species,mean)
barplot(mean_sepal,
        main = ("average sepal length")  ,
        col = c("orange", "purple" , "cyan"),
        xlab = "species" , 
        ylab = "mean sepal length")

#3c
mean_petal <- tapply(iris$Petal.Length , iris$Species,mean)
mean_sepal <- tapply(iris$Sepal.Length , iris$Species,mean)

stack_data <- rbind(mean_sepal, mean_petal)

barplot(stack_data,
        main = ("stacked plot: sepal+petal length")  ,
        col = c("green" , "red"),
        xlab = "species" , 
        ylab = "length",
        legend = c("Sepal lengthy" , "petal length"))



  