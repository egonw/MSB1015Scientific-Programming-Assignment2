# Overview
This repository contains the second assignment for the Scientific Programming course MSB1015. The assignment is supposed to cover data analysis using R Markdown. More specifically, the assignment is to query (SPARQL) for data on molecules of the chemical class alkanes from wikidata. Retrieved data is processed and a partial least squares regression model is built from the data. With the help of the model, boiling points of the compounds are predicted. Reproducibility of the method pls is assessed using a support vector machine regression.

# Installation
In order to run this code, it is necessary for the user to have the following prerequisites:

1. Make sure you have a modern web browser (e.g. Chrome)
2. Make sure you have preferably the latest version of R installed on your computer (https://www.r-project.org/).
··* It is recommended to also install rstudio (https://rstudio.com/)
3. Make sure you have at least enough storage to install packages in R.
4. Download this repository from the releases tab
5. Unzip the compressed file.
6. To only look at the results of this assignment, run index.html
7. To manipulate code and adjust settings, open Assignment2.Rmd

# Execution of Code

When executing the code in Assignment2.Rmd, please keep in mind that sections of code depend on previous sections of code
and therefore need to be run beforehands. It is possible to run all code at once.
Please also be aware of the following points:
* Make sure a version of Java is installed that is compatible with the rJava package.
* If problems arise during installation of packages, the code will not run without problems, because all packages are required.
* Make sure that all .R files which include functions are in the same directory as the .Rmd file. Those functions need to be loaded into the environment.

## Remarks to Reproducibility:

* The query should return 134 results.
* The seed in set.seed() will effect how the data is split for building of the model. It must therefore be kept at the same number among different models when it is intended to compare those.
* A description of how descriptors can be added or removed is included in the .Rmd file. The selection of descriptors will have an effect on the predictive quality of the model which is built subsequently.

# Data Analysis

# GitHub pages

You can access the assignment HTML page through Github pages on the following URL:

https://prstolpe.github.io/MSB1015Scientific-Programming-Assignment2/
