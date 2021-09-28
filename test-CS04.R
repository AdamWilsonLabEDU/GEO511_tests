library(testthat)


########### 
# Case Study 04

#r_files=list.files("week_04",pattern="[.]R$")
#rmd_files=list.files("week_04",pattern="[.]Rmd$")

# Case study script


file_r="week_04/case_study_04.R"
file_rmd="week_04/case_study_04.Rmd"


# If .Rmd file exists, use it instead of R file
if(file.exists(file_rmd)){
  file_purl=gsub("*.Rmd","_purl.R",file_rmd)
  knitr::purl(file_rmd,output=file_purl)
  file_r=file_purl  

  context("Case Study 04 - Rmd file compiles successfully")
  
  test_that(paste0(file_rmd, " compiles successfully with rmarkdown::render()"),{
    expect_error(rmarkdown::render(file_rmd),NA)
  })
  
  
    }

# The tests below run against original R (if no .Rmd) or purled Rmd file.

context("Case Study 04 - File Exists")

test_that(paste0(file_r, " file exists"),{
  expect_true(file.exists(file))
})

context("Case Study 04 - File Sources without errors")

test_that(paste0(file_r, " file sources without errors"), {
  expect_error(source(file_r), NA)
})

context("Case Study 04 - Results")

source(file_r)

test_that("farthest_airport exists",{
  expect_true(exists("farthest_airport"))
})

test_that("farthest_airport is a character variable (not data.frame, etc.)",{
  expect_true(is.character(farthest_airport))
})

test_that("farthest_airport is correct",{
  expect_equal(farthest_airport,"Honolulu Intl")
})

