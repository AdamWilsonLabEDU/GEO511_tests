library(testthat)


########### 
# Case Study 02

# Case study script
file="week_02/case_study_02.R"

context("Case Study 02 - File Exists")
test_that(paste0(file, " file exists"),{
  expect_true(file.exists(file))
})

context("Case Study 01 - File Sources without errors")
test_that(paste0(file, " file sources without errors"), {
expect_silent(source(file))
})

context("Case Study 01 - Results")
test_that(paste0(file, " file includes geom_smooth"), {
  expect_true(grepl("geom_smooth",scan(file)))
})

