library(cluster)
iris_1 <- iris[,-5]
set.seed(200)
kmeans.re <- kmeans(iris_1 , centers = 3 , nstart = 20)
kmeans.re
kmeans.re$cluster
cm <-table(iris$Species,kmeans.re$cluster)
cm
plot(iris_1[c("Sepal.Length", "Sepal.Width")]) 
plot(iris_1[c("Sepal.Length", "Sepal.Width")],  
     col = kmeans.re$cluster) 
plot(iris_1[c("Sepal.Length", "Sepal.Width")],  
     col = kmeans.re$cluster,  
     main = "K-means with 3 clusters")