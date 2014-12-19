
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
head(iris["Petal.Length"])
#Multiple colums
head(iris[c("Petal.Length","Species")])
#Now we can combine what we have seen to do some more complex queries
#Lets get all the data for Species with a petal length greater than 6
big_iris<-iris[iris$Petal.Length>=6,]
head(big_iris)
#Or maybe we want just the sepal widths of the virginica species
virginica_iris<-iris$Sepal.Width[iris$Species=="virginica"]
head(virginica_iris)


## ----subset_examp--------------------------------------------------------
#And redo what we did above
big_iris_subset<-subset(iris,subset=Petal.Length>=6)
head(big_iris_subset)
virginica_iris_subset<-subset(iris,subset=Species=="virginica",select=Sepal.Width)
head(virginica_iris_subset)


## ----cbind_examp---------------------------------------------------------
#Create a new vector to add to the iris data frame
categories<-sample(1:3,nrow(iris),replace=T)
iris_cbind<-cbind(iris,categories)
head(iris_cbind)


## ----transform_examp-----------------------------------------------------


## ----rbind_examp---------------------------------------------------------
#Let's first create a new small example data.frame
rbind_df<-data.frame(a=1:3,b=c("a","b","c"),c=c(T,T,F),d=rnorm(3))
#Now an example df to add
rbind_df2<-data.frame(a=10:12,b=c("x","y","z"),c=c(F,F,F),d=rnorm(3))
rbind_df<-rbind(rbind_df, rbind_df2)
rbind_df


