
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Signed
by](https://img.shields.io/badge/Keybase-Verified-brightgreen.svg)](https://keybase.io/hrbrmstr)
![Signed commit
%](https://img.shields.io/badge/Signed_Commits-100%25-lightgrey.svg)
[![Linux build
Status](https://travis-ci.org/hrbrmstr/statically.svg?branch=master)](https://travis-ci.org/hrbrmstr/statically)  
![Minimal R
Version](https://img.shields.io/badge/R%3E%3D-3.2.0-blue.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

# statically

Generate Webpage Screenshots Using the Statically API

## Description

Statically (<https://statically.io/screenshot/>) maintains a free API to
generate screenshots of webpages. Tools are provided to capture website
screenshots using this API.

## What’s Inside The Tin

The following functions are implemented:

  - `generate_screenshot`: Generate a webpage screenshot

## Installation

``` r
remotes::install_git("https://git.rud.is/hrbrmstr/statically.git")
# or
remotes::install_git("https://git.sr.ht/~hrbrmstr/statically")
# or
remotes::install_gitlab("hrbrmstr/statically")
# or
remotes::install_bitbucket("hrbrmstr/statically")
```

NOTE: To use the ‘remotes’ install options you will need to have the
[{remotes} package](https://github.com/r-lib/remotes) installed.

## Usage

``` r
library(statically)

# current version
packageVersion("statically")
## [1] '0.1.0'
```

Default:

``` r
generate_screenshot("https://www.latimes.com/")
```

![](man/figures/README-ex1-1.png)<!-- -->

Mobile:

``` r
generate_screenshot("https://www.latimes.com/", mobile = TRUE)
```

![](man/figures/README-ex3-1.png)<!-- -->

Full page (not shown b/c it’s super duper long):

``` r
generate_screenshot("https://rud.is/b", full_page = TRUE)
```

## statically Metrics

| Lang | \# Files | (%) | LoC |  (%) | Blank lines |  (%) | \# Lines |  (%) |
| :--- | -------: | --: | --: | ---: | ----------: | ---: | -------: | ---: |
| R    |        4 | 0.8 |  38 | 0.78 |          11 | 0.34 |       29 | 0.44 |
| Rmd  |        1 | 0.2 |  11 | 0.22 |          21 | 0.66 |       37 | 0.56 |

## Code of Conduct

Please note that this project is released with a Contributor Code of
Conduct. By participating in this project you agree to abide by its
terms.
