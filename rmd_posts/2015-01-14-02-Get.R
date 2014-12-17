
## ----setup, echo=FALSE, warning=FALSE------------------------------------
options(repos="http://cran.rstudio.com/")


## ----operators_consoloe--------------------------------------------------
#A really powerful calculator!
1+1 #Add
10-4 #Subtract
3*2 #Multiply
3^3 #Exponents
100/10 #Divide
5%%2 #Modulus
5>2 #Greater than
4<5 #Less than
5<=5 #Less than or equal
8>=2 #Greater than or equal


## ----assignment_operator-------------------------------------------------
#Numeric assignment
x<-5
x
y<-x+1
y
z<-x+y
z
#Character
a<-"Bob"
a
b<-"Sue"
b


## ----useful_functions_workspace------------------------------------------
#List all objects in current workspace
ls() 
ls(pattern="a")

#Remove an object
rm(x)

#Save your workspace
#Saves the whole thing to a file called lesson2.RData
save.image("lesson2.RData") 
#Saves just the a and y objects to a file called lesson2_ay.RData
save(a,y,file="lesson2_ay.RData")


## ----useful_functions_directory------------------------------------------
#See the current directory
getwd()

#Create a directory
dir.create("temp")

#Change the directory
setwd("temp")

#List files and directories
list.files()
list.files("..")
list.dirs("..")


## ----data_type_functions, eval=FALSE-------------------------------------
## typeof()  # what is it?
## length()  # how long is it? What about two dimensional objects?
## attributes()  # does it have any metadata?


## ------------------------------------------------------------------------
x <- vector()
x
# with a pre-defined length
x <- vector(length = 10)
x
# with a length and type
vector("character", length = 10)
vector("numeric", length = 10)
vector("integer", length = 10)
vector("logical", length = 10)


## ------------------------------------------------------------------------
x <- c(1, 2, 3)


## ------------------------------------------------------------------------
x1 <- c(1L, 2L, 3L)


## ------------------------------------------------------------------------
y <- c(TRUE, TRUE, FALSE, FALSE)


## ------------------------------------------------------------------------
z <- c("Alec", "Dan", "Rob", "Karthik")


## ------------------------------------------------------------------------
typeof(z)
length(z)
class(z)
str(z)


## ------------------------------------------------------------------------
z <- c(z, "Annette")
z


## ------------------------------------------------------------------------
x <- c(0.5, 0.7)
x <- c(TRUE, FALSE)
x <- c(T, F)
x <- c("a", "b", "c", "d", "e")
x <- 9:100
x <- c(i + 0, 2 + 4)


## ------------------------------------------------------------------------
series <- 1:10
seq(10)
seq(1, 10, by = 0.1)


## ------------------------------------------------------------------------
1/0
# [1] Inf
1/Inf
# [1] 0


## ------------------------------------------------------------------------
0/0
NaN.


## ------------------------------------------------------------------------
x <- list(1, "a", TRUE, 1 + 4)


## ------------------------------------------------------------------------
x <- 1:10
x <- as.list(x)
length(x)


## ------------------------------------------------------------------------
xlist <- list(a = "Karthik Ram", b = 1:10, data = head(iris))


## ------------------------------------------------------------------------
temp <- list(list(list(list())))
temp
is.recursive(temp)


## ------------------------------------------------------------------------
x <- factor(c("yes", "no", "no", "yes", "yes"))
x


## ------------------------------------------------------------------------
x <- factor(c("yes", "no", "yes"), levels = c("yes", "no"))


