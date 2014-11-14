---
title: "01 - Introduction to R: The basics"
author: Jeffrey W. Hollister
layout: post_page
---

Over the course of the next two days we are going to walk through a typical data analysis workflow in R.  This is the first lesson and we are going to focus on making sure everything is working and some basic orientation in R.  The real fun will start in the lessons to come.  

Our goals for this lesson are:

- Understand what R is and what it can be used for
- Why would you choose R over another tool
- Troubleshoot software installs (keep your fingers crossed)
- Gain familiarity with using R from within the RStudio IDE
- Get to know the basic syntax of R functions
- Be able to install and load a package into your R library
- Know how to get help

##What is R

```r
plot(rnorm(100),rnorm(100))
```

![plot of chunk unnamed-chunk-1]({{ site.url }}/figure/unnamed-chunk-1-1.png) 

##Why would you want to use it

##Getting R and RStudio going

##Using functions

##Using packages
The base install of R is quite powerful, but you will soon have a need or desire to go beyond this.  Packages provide this ability.  They are a standardized method for extending R with new methods, techniques, and programming functionality.  There is a lot to say about packages regarding finding them, using them, etc., but for now let's focus just on the basics.  

###CRAN
One of the reasons for R's popularity is CRAN, [The Comprehensive R Archive Network](http://cran.r-project.org/).  This is where you download R and also where most will gain access to packages (there are other places, but that is for later).  Not much else to say about this now other than to be aware or it.

###Installing packages
When a packages gets installed, that means the source (or packaged binary for Windows) is downloaded and put into your library.  A default library location is set for you so no need to worry about that.  In fact on Windows most of this is pretty automatic.  Let's give it a shot.


```
## Removing packages from '/data/jhollist/R/x86_64-redhat-linux-gnu-library/3.1'
## (as 'lib' is unspecified)
```

```
## Warning in find.package(pkgs, lib): there is no package called 'dplyr'
```



```r
#Install dplyr and ggplot2
install.packages("ggplot2")
```

```
## Installing package into '/data/jhollist/R/x86_64-redhat-linux-gnu-library/3.1'
## (as 'lib' is unspecified)
```

```
## 
## The downloaded source packages are in
## 	'/tmp/Rtmpmz2SUz/downloaded_packages'
```

```r
install.packages("dplyr")
```

```
## Installing package into '/data/jhollist/R/x86_64-redhat-linux-gnu-library/3.1'
## (as 'lib' is unspecified)
```

```
## Warning in install.packages("dplyr"): installation of package 'dplyr' had
## non-zero exit status
```

```
## 
## The downloaded source packages are in
## 	'/tmp/Rtmpmz2SUz/downloaded_packages'
```

```r
#You can also put more than one in like
install.packages(c("randomForest","formatr"))
```

```
## Installing packages into '/data/jhollist/R/x86_64-redhat-linux-gnu-library/3.1'
## (as 'lib' is unspecified)
```

```
## Warning: package 'formatr' is not available (for R version 3.1.1)
```

```
## Warning: Perhaps you meant 'formatR' ?
```

```
## 
## The downloaded source packages are in
## 	'/tmp/Rtmpmz2SUz/downloaded_packages'
```

###Loading packages
One source of confusion that many have is when they cannot access a package that they just installed. This is because getting to this point requires an extra step, loading (or attaching) the package.   


```r
#Add libraries to your R Session
library("ggplot2")
```

```
## Loading required package: methods
```

```r
library("dplyr")
```

```
## Error in library("dplyr"): there is no package called 'dplyr'
```

```r
#You can also access functions in a library by using package::function
randomForest::randomForest
```

```
## function (x, ...) 
## UseMethod("randomForest")
## <environment: namespace:randomForest>
```

You will often see people use `require` to load a package. It is better form to not do this. For a more detailed explanation of why `library()` and not `require()` see [Yihui Xie's post on the subject](http://yihui.name/en/2014/07/library-vs-require/.)

###Some other useful commands
There are a lot of other commands that help you navigate packages


```r
#See what is installed installed.packages()

#What is available.packages()
```

##Help!
