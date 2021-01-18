install.packages("fpc")
library(fpc)
iris_1 <-iris[-5]
set.seed(200)
dbscan_cl <- dbscan(iris_1 , eps=0.45 , MinPts = 5)
dbscan_cl
dbscan_cl$cluster
table(dbscan_cl$cluster , iris$Species)
plot(dbscan_cl , iris_1 , main="DBScan")
plot(dbscan_cl, iris_1 , main = "Petal Width VS Sepal length")

