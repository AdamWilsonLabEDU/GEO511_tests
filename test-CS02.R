library(testthat)


########### 
# Case Study 02

# Case study script
file="week_02/case_study_02.R"

context("Case Study 02 - File Exists")
test_that(paste0(file, " file exists"),{
  expect_true(file.exists(file))
})

context("Case Study 02 - File Sources without errors")
test_that(paste0(file, " file sources without errors"), {
expect_silent(source(file))
})

context("Case Study 02 - Results")
test_that(paste0(file, " file includes geom_smooth"), {
  expect_true(any(grepl("geom_smooth",readLines(file))))
})

test_that(paste0(file, " file includes geom_line"), {
  expect_true(any(grepl("geom_line",readLines(file))))
})
