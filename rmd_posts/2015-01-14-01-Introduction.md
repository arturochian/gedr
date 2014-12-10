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

##Exercise 1

1. Start RStudio: To start both R and RStudio requires only firing up RStudio.  RStudio should be available from All Programs at the Start Menu.  Fire up RStudio. You should have done this already (see [post 00](http://jwhollister.com/gedr/2015/01/14/00-Before-The-Workshop/)).

2. Take a few minutes to look around RStudio.  While you do this, I will demo a few things.

3. Make sure you can find the Console Pane, create a new project for Lesson 1, create a new file in the Source Pane, save that file into your newly created project. 

##Using functions
R is built off of functions and most of everything you do will use a function.

The basic syntax of function follows the form: `function_name(param1, param2, ...)`.  With the base install, you will gain access to many.  For instance:









