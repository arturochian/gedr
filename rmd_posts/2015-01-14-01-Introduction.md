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

##Quick Links to Excercises
My goal is to have this workshop be as hands-on as possible.  As such, there are excercises through out.  For each lesson, I will provide a list of links near the top of the post so that you can skip all the prose and jump straight to the lessons.  So, here are the links for Lesson 1.

- [Excercise 1](#exercise-1): RStudio Introduction.

##What is R and why use it
R is an open source language and environment for data analysis, statistics, and visualization.  This is the typical definition.  I would argue that R has evolved a bit and is now, more and more, also a general purpose computing language.  It is very widely used in academia and industry for statistics, visualization, data science, and general purpose computation.  In short, the answer to the question to, "Can you do that in R" is almost always yes.  R may not be the best answer, but it is an accurate one.  

The primary reason R is widely used is that it is free, has a large and vibrant community, it is easily extensible, and back to that question, yes you can do that in R!  More to the point, in the environmental sciences R is able to handle any data management, analysis or visualization task that you would need to accomplish and it has capabilities to provide a fully reproducible analysis. 

##Getting R and RStudio going
Over the last several years, RStudio has become a very popular IDE (integrated development environment) for R.  In addition to interacting with the R Console, RStudio has many extras built in including version control integration, package building, reproducible research, de-bugging, and built-in text editor with smart highlighting and code completion.  This is the environment we will be using for the two days and should set you up for continued learning with R.

<div id="excercise-1" markdown=1>

##Exercise 1

</div>

1. Start RStudio: To start both R and RStudio requires only firing up RStudio.  RStudio should be available from All Programs at the Start Menu.  Fire up RStudio. You should have done this already (see [post 00](http://jwhollister.com/gedr/2015/01/14/00-Before-The-Workshop/)).

2. Take a few minutes to look around RStudio.  While you do this, I will demo a few things.

3. Make sure you can find the Console Pane, create a new project for Lesson 1, create a new file in the Source Pane, save that file into your newly created project. 

##Using functions
R is built off of functions.  Using functions follow the basic syntax of: `function_name(param1, param2, ...)`.

##Using packages
The base install of R is quite powerful, but you will soon have a need or desire to go beyond this.  Packages provide this ability.  They are a standardized method for extending R with new methods, techniques, and programming functionality.  There is a lot to say about packages regarding finding them, using them, etc., but for now let's focus just on the basics.  

###CRAN
One of the reasons for R's popularity is CRAN, [The Comprehensive R Archive Network](http://cran.r-project.org/).  This is where you download R and also where most will gain access to packages (there are other places, but that is for later).  Not much else to say about this now other than to be aware or it.

###Installing packages
When a packages gets installed, that means the source (or packaged binary for Windows) is downloaded and put into your library.  A default library location is set for you so no need to worry about that.  In fact on Windows most of this is pretty automatic.  Let's give it a shot.



{% highlight r %}
#Install dplyr and ggplot2
install.packages("ggplot2")
{% endhighlight %}



{% highlight text %}
## Installing package into '/data/jhollist/R/x86_64-redhat-linux-gnu-library/3.1'
## (as 'lib' is unspecified)
{% endhighlight %}



{% highlight text %}
## 
## The downloaded source packages are in
## 	'/tmp/RtmpFFMvXl/downloaded_packages'
{% endhighlight %}



{% highlight r %}
install.packages("dplyr")
{% endhighlight %}



{% highlight text %}
## Installing package into '/data/jhollist/R/x86_64-redhat-linux-gnu-library/3.1'
## (as 'lib' is unspecified)
{% endhighlight %}



{% highlight text %}
## 
## The downloaded source packages are in
## 	'/tmp/RtmpFFMvXl/downloaded_packages'
{% endhighlight %}



{% highlight r %}
#You can also put more than one in like
install.packages(c("randomForest","formatR"))
{% endhighlight %}



{% highlight text %}
## Installing packages into '/data/jhollist/R/x86_64-redhat-linux-gnu-library/3.1'
## (as 'lib' is unspecified)
{% endhighlight %}



{% highlight text %}
## 
## The downloaded source packages are in
## 	'/tmp/RtmpFFMvXl/downloaded_packages'
{% endhighlight %}

###Loading packages
One source of confusion that many have is when they cannot access a package that they just installed. This is because getting to this point requires an extra step, loading (or attaching) the package.   


{% highlight r %}
#Add libraries to your R Session
library("ggplot2")
{% endhighlight %}



{% highlight text %}
## Loading required package: methods
{% endhighlight %}



{% highlight r %}
library("dplyr")
{% endhighlight %}



{% highlight text %}
## 
## Attaching package: 'dplyr'
## 
## The following object is masked from 'package:stats':
## 
##     filter
## 
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
{% endhighlight %}



{% highlight r %}
#You can also access functions in a library by using package::function
randomForest::randomForest
{% endhighlight %}



{% highlight text %}
## function (x, ...) 
## UseMethod("randomForest")
## <environment: namespace:randomForest>
{% endhighlight %}

You will often see people use `require` to load a package. It is better form to not do this. For a more detailed explanation of why `library()` and not `require()` see [Yihui Xie's post on the subject](http://yihui.name/en/2014/07/library-vs-require/.)

###Some other useful commands
There are a lot of other commands that help you navigate packages


{% highlight r %}
#See what is installed installed.packages()

#What is available.packages()
{% endhighlight %}

##Help!
