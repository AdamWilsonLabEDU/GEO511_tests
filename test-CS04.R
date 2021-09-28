library(testthat)


########### 
# Case Study 04

list.files("week_04",pattern="[.]R^|[.]Rmd^")
# Case study script

file="week_04/case_study_04.R"
file_rmd="week_04/case_study_04.Rmd"
if(



context("Case Study 04 - File Exists")
test_that(paste0(file, " file exists"),{
  expect_true(file.exists(file))
})

context("Case Study 04 - File Sources without errors")
test_that(paste0(file, " file sources without errors"), {
expect_silent(source(file))
})

context("Case Study 04 - Results")

test_that("farthest_airport exists",{
  expect_true(exists("farthest_airport"))
})

test_that("farthest_airport is a character variable (not data.frame, etc.)",{
  expect_true(is.character(farthest_airport))
})

test_that("farthest_airport is correct",{
  expect_equal(farthest_airport,"Honolulu Intl")
})

