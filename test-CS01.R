library(testthat)

# Could potentially break the testthat.R into separate tests and assign different points for each test. 
# See the .github/classroom/autograding.json file for details.


########### 
# Case Study 01

# Case study script
context("Case Study 01 - File Exists")
f_cs01="week_01/case_study_01.R"

test_that(paste0(f_cs01, " file exists"),{
  expect_true(file.exists(f_cs01))
})

context("Case Study 01 - File runs")
test_that("File sources without errors", {
expect_silent(source(f_cs01))
})

context("Case Study 01 - Results")

test_that("petal_length_mean",{
  expect_true(exists("petal_length_mean"))
  expect_equal(petal_length_mean, 3.758)
})