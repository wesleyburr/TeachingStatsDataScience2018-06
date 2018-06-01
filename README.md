# Teaching Statistics and Data Science Using R and RStudio Workshop (SSC, June, 2018)

## Overview

#### Workshop on Teaching Modern Statistics and Data Science using R/RStudio 
#### Nicholas Horton, Amherst College

R is a freely available language and environment for statistical computing and graphics that has become popular in academia and in many industries. RStudio is a power interactive development environment (IDE) for R that can be access from the cloud.  This workshop will introduce participants to teaching applied statistics and data science courses using computing in an integrated way. The presenter has been using R and RStudio to teach statistics to undergraduates at all levels for the last decade and will share his approach and favorite examples. Topics will include workflow in the RStudio environment, providing novices with a powerful but manageable set of tools, simple data wrangling, data visualization, and basic statistical inference using R. 

Much of this "Less Volume, More Creativity" approach will be facilitated using the mosaic package. The workshop is designed to be accessible to those with little or no experience with R and is intended to provide participants with skills, examples, and resources that they can use in their own teaching.

INSTRUCTOR: Nicholas Horton is a Professor of Statistics at Amherst College, with methodologic research interests in longitudinal regression models and missing data methods and applications in psychiatric epidemiology and substance abuse research. He received his doctorate in Biostatistics (with minors in Psychosocial Comorbidity and Theoretical Statistics) from the Harvard School of Public Health in 1999. Dr. Horton has co-authored more than 160 papers in the statistical methodology, behavioral research, and health services research literature, as well as a series of books on statistical computing and data science in R. He is an accredited statistician, a Fellow of the American Statistical Association, former member of the ASA Board of Directors, a member of the workgroup that revised the GAISE College Report, recipient of the Sherrerd, Waller, Hogg, and Warde teaching awards, and past-chair of the ASA's Section on Statistical Education.

## Logistics

### Laptops

You'll be working on your own laptops: please be sure to bring one and a power cord (we'll want to ensure that every pair of participants has a working laptop).

### Shared RStudio server

Registrants will access workshop materials using a shared space on RStudio.cloud.  Please be sure to set up an account prior to the workshop.


## Schedule

- 9:00-10:15am
  0. apology: US centric datasets
  1. introduction and setup: please connect to the RStudio.cloud server ssc2018rstudio
  2. `mplot(HELPrct)`
  3. [R Markdown](https://prezi.com/vq6l5yqpnqma/intro-to-r-markdown-cvc-2015)
  4. [Less Volume](http://rstudio.calvin.edu:3939/ecots2018) [LessVolume.Rmd](Less-Volume2018-06.Rmd) tutorials: `learnr::run_tutorial("introduction", package = "ggformula")` `learnr::run_tutorial("refining", package = "ggformula")`
  5. Working on day one: [Paper](XX) `mplot(XX)` and RPubs
  6. [RQuiz study guide](R-guide.pdf)

- 10:15-10:30am break

- 10:30-noon
  1. autotrader.ca: please download https://nhorton.people.amherst.edu/cars.csv
  2. dplyr + tidyverse: [DataI.pdf](https://MDSRXX.people.amherst.edu/workshop/dataI.pdf)
`dplyr-tutorial.Rmd` `restaurants-example.Rmd`
  3. SQL: `sql-example1.Rmd` and `sql-example2.Rmd`
  4. R Style: [Google style guide](https://google.github.io/styleguide/Rguide.xml), [Hadley style guide](http://adv-r.had.co.nz/Style.html), Randy's [suggestions](style.md)
  5. Watch Hadley code: https://www.youtube.com/watch?v=go5Au01Jrvs&index=11&list=WL&t=0s

- noon-1:00pm lunch

- 1:00-2:15pm
  1. shiny `shiny.R`: please run the app then add another tab that displays summary statistics for the `displayenroll` variable by `subject`: `favstats(displayenroll ~ subject, data = courses())`
  2. spatial analysis: XX
  3. leaflet: XX + bikedata?

- 2:15-2:30pm break

- 2:30-4:00pm 
  1. github: https://github.com/Amherst-Statistics/SSCtest   `github.Rmd`
  2. DataCamp: https://datacamp.com  XX add screenshot
  3. learnr: https://rstudio.github.io/learnr/  (see `dplyr-tutorial.Rmd`)
  4. closing and all questions answered


  2. https://dtkaplan.shinyapps.io/USBirths/
  3. https://dtkaplan.shinyapps.io/Plotting_with_formulas/

  1. [hw1.Rmd](https://nhorton.people.amherst.edu/workshop/hw1.Rmd)
  2. [cars.Rmd](https://nhorton.people.amherst.edu/workshop/cars2.Rmd)
- noon-1pm lunch (with Q&A time)
- 1:00-1:45pm First steps on day 1


- 1:45-2:30pm sample activities and assessments

  1. Roadless USA (`source("http://nhorton.people.amherst.edu/workshop/roadless-setup.R"`)
  2. cars.com 
  3. [RQuiz study guide](https://nhorton.people.amherst.edu/workshop/R-guide.pdf)

- 2:30-2:45pm break

- 2:45-3:15pm More on RStudio, the tidyverse, and related resources 

  1. [Data Wrangling cheatsheet](https://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf)
  2. [DataI.pdf](https://nhorton.people.amherst.edu/workshop/dataI.pdf)
  3. http://nhorton.people.amherst.edu/workshop/dplyr-tutorial.Rmd
  4. `shiny::runGitHub("shiny_apps", "bborgesr", subdir = "dataOp")`

- 3:15-3:30pm A glimpse of leaflet ([leaflet.Rmd](https://nhorton.people.amherst.edu/workshop/leaflet.Rmd]), [learnr](https://rstudio.github.io/learnr), and [Shiny gallery](https://shiny.rstudio.com/gallery)
- 3:30-3:45pm Closing thoughts, other resources, final review of Q&A document, and next steps

## Feedback

We’ll use this Google Doc to record your questions and comments and to provide responses. Feel free to edit it at anytime before, during, or (shortly) after the workshop.

- [Google Doc](https://docs.google.com/document/d/1D65bQS--pmj6Cu9VAkjvmlIGe-yk2d0xGZfRknkysrA/edit?usp=sharing)

## Resources

### Workshop related

- http://www.github.com/Amherst-Statistics/TeachingStatsDataScience2018-06 (this page)
- https://rstudio.cloud (RStudio cloud)
- http://nhorton.people.amherst.edu/rstudio (student resources for R)
- http://nas.edu/EnvisioningDS (Envisioning Undergraduate Data Science Education consensus report)

### Textbooks

- http://mdsr-book.github.io/ (Modern Data Science with R)
- http://r4ds.had.co.nz/ (R for Data Science)
- http://nhorton.people.amherst.edu/r2/ (Using R for Data Management, Statistical Analysis, and Graphics)
- http://nhorton.people.amherst.edu/sasr2/ (SAS and R: Data Management, Statistical Analysis, and Graphics)

### Textbooks with illustrated examples in R

- https://cran.r-project.org/web/packages/mosaic/ (mosaic vignettes and textbooks)
- https://nhorton.people.amherst.edu/is4 (De Veaux, Velleman, and Bock Stats Intro Stats)
- https://nhorton.people.amherst.edu/sdm4 (De Veaux, Velleman, and Bock Stats Data and Models)
- https://nhorton.people.amherst.edu/ips6e (IPS 6th edition)

### General Stat Ed

- http://www.amstat.org/education/gaise/ (revised GAISE College report)
- https://arxiv.org/abs/1705.09530 (commentary on revised GAISE College report)
- http://www.amstat.org/education/resourcesforundergradteachers.cfm
- http://www.amstat.org/education/pdfs/Resources-for-Teaching-an-Intro-Stats-Course.pdf
- http://community.amstat.org/stats101/home (Stats 101 examples)
- http://causeweb.org (CAUSE)

### Thinking with Data

- http://amstat.tandfonline.com/doi/full/10.1080/00031305.2015.1094283 (Thinking with data)
- http://nhorton.people.amherst.edu/precursors (developing precursors to "Thinking with Data")

### Other datasets

- https://github.com/ropensci/weathercan
- https://github.com/ropensci/bikedata
- https://data.geotab.com/

### RStudio servers

- http://deanattali.com/2015/05/09/setup-rstudio-shiny-server-digital-ocean/
- https://www.causeweb.org/cause/ecots/ecots16/breakouts/7
- https://rstudio.cloud

Last updated May 31, 2018
