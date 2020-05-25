Pollution Monitoring Functions building
================

## Introduction

According to a 2009 report, around **“60 percent of Americans live in
areas where air pollution has reached unhealthy levels that can make
people sick”.** Analyzing data from 2016–2018, the American Lung
Association found major declines in air quality, including increases in
ground-level ozone.

<img src="images/pollution_img.jpg" width="800px" />

### Pollution Monitoring data:

Download Here:
[pollution\_data](https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fspecdata.zip)

The zip file, and the “specdata” folder in this repository, contains 332
comma-separated-value (CSV) files containing **pollution monitoring data
for fine particulate matter (PM) air pollution at 332 locations in the
United States.** Each file contains data from a single monitor and the
ID number for each monitor is contained in the file name. For example,
data for monitor 200 is contained in the file “200.csv”. Each file
contains three variables:

  - **Date:** the date of the observation in YYYY-MM-DD format
    (year-month-day)
  - **Sulfate:** the level of sulfate PM in the air on that date
    (measured in micrograms per cubic meter)
  - **Nitrate:** the level of nitrate PM in the air on that date
    (measured in micrograms per cubic meter)

### Pollution Monitoring Functions:

In this folder you will find some examples of scripts that help
**calculate some of the most used functions in statistics**, such as
**the average or the correlation of variables**, in addition to
**dealing with missing data** across **a big data splited in 332
comma-separated-value (CSV) files** **without having to load the files
all at once in to the memory.**

### Missings\_values\_counting.R:

This function reads a directory full of files and **reports the number
of completely observed cases in each data file**. Then it **return a
data frame where the first column is the name of the file and the second
column is the number of complete cases. **

[see the function code here](https://github.com/CDopazo/Project_portfolio/blob/master/R%20programming/Pollution_monitoring_functions/coding/Missings_values_counting.R)

Example:

``` r
source("coding/Missings_values_counting.R")
complete("specdata", 54)
```

    ##    i nobs
    ## 1 54  219

``` r
cc <- complete("specdata", c(6, 10, 20, 34, 100, 200, 310))
print(cc$nobs)
```

    ## [1] 228 148 124 165 104 460 232

### Mean\_pollutant\_calculator.R

This function **calculates the mean of a pollutant (sulfate or nitrate)
across a specified list of monitors.** The function ‘pollutantmean’
takes three arguments: ‘directory’, ‘pollutant’, and ‘id’. Given a
vector monitor ID numbers, ‘pollutantmean’ reads that monitors’
particulate matter data from the directory specified in the ‘directory’
argument and **returns the mean of the pollutant across all of the
monitors, ignoring any missing values coded as NA.**

[see the function code here](https://github.com/CDopazo/Project_portfolio/blob/master/R%20programming/Pollution_monitoring_functions/coding/Mean_pollutant_calculator.R)

Example:

``` r
source("coding/Mean_pollutant_calculator.R")
pollutantmean("specdata", "sulfate", 1:10)
```

    ## [1] 4.064128

``` r
pollutantmean("specdata", "nitrate", 70:72)
```

    ## [1] 1.706047

``` r
pollutantmean("specdata", "sulfate", 34)
```

    ## [1] 1.477143

### Correlation\_pollutant\_missing\_vallues\_treshold.R

This function that takes a directory of data files and a threshold for
complete cases and **calculates the correlation between sulfate and
nitrate** for monitor locations where the number of completely observed
cases (on all variables) is greater than the threshold. The function
should **return a vector of correlations for the monitors that meet the
threshold requirement.** **If no monitors meet the threshold**
requirement, then the function should **return a numeric vector of
length 0.**

[see the function code here](https://github.com/CDopazo/Project_portfolio/blob/master/R%20programming/Pollution_monitoring_functions/coding/Correlation_pollutant_missing_values_treshold.R)

Example

``` r
source("coding/Correlation_pollutant_missing_values_treshold.R")
corr("specdata", 800)
```

    ##  [1] -0.01895754 -0.15782860  0.25905718  0.05774168 -0.03309130 -0.14620214
    ##  [7] -0.04253357  0.09807386  0.03666592  0.34742157  0.23198440  0.27590363
    ## [13]  0.08521742  0.04191777  0.42479896  0.36172843 -0.03509034 -0.05300116
    ## [19]  0.29579370  0.01653564 -0.07449532  0.19014198  0.10955732  0.04621127
    ## [25] -0.06080823  0.16086505  0.59834333  0.19183481  0.51882017  0.25397808
    ## [31]  0.26878050

``` r
corr("specdata", 1000)  
```

    ## [1] -0.01895754  0.04191777  0.19014198
