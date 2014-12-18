
## ----indexing_examp------------------------------------------------------
#Create a vector
x<-c(10:19)
x
#Postive indexing returns just the value in the ith place
x[7]
#Negative indexing returns all values except the value in the ith place
x[-3]
#Ranges work too
x[8:10]
#A vector can be used to index
#Can be numeric
x[c(2,6,10)]
#Can be boolean - will repeat the pattern 
x[c(TRUE,FALSE)]
#Can even get fancy
x[x%%2==0]


## ----data_frame_index----------------------------------------------------
#Let's use one of the stock data frames in R, iris
head(iris)
#And grab a specific value
iris[1,1]
#A whole column
petal_len<-iris[,3]
petal_len
#A row
obs15<-iris[15,]
obs15
#Many rows
obs3to7<-iris[3:7,]
obs3to7


## ----more_data_frame_index-----------------------------------------------
#First, there are a couple of ways to use the column names
iris$Petal.Length
iris["Petal.Length"]
#Multiple colums
iris[c("Petal.Length","Species")]
#Now we can combine what we have seen to do some more complex queries
#Lets get all the data for Species with a petal length greater than 6
big_iris<-iris[iris$Petal.Length>=6,]
big_iris
#Or maybe we want just the sepal widths of the virginica species
virginica_iris<-iris$Sepal.Width[iris$Species=="virginica"]
virginica_iris


## ----subset_examp--------------------------------------------------------
#And redo what we did above
big_iris_subset<-subset(iris,subset=Petal.Length>=6)
big_iris_subset
virginica_iris_subset<-subset(iris,subset=Species=="virginica",select=Sepal.Width)
virginica_iris_subset


