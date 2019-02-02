#Hierarchical Clustering

#Importing the dataset
dataset = read.csv('Mall_Customers.csv')
X = dataset[4:5]

#Using the dendogram to find the number of clusters
dendogram = hclust(dist(X,method ='euclidean'),method ='ward.D')
plot(dendogram,main =paste('Dendograms'),xlab = "Customers",ylab = "Eucledian Distance")
y_hc = cutree(dendogram,5)


#Visualise
library(cluster)
clusplot(X,y_hc,lines = 0,shade = TRUE,color = TRUE,labels=2,plotchar = FALSE, span = TRUE,
         main = paste('Cluster of Clients'),xlab = "Annual Income",ylab = "Spending Score")