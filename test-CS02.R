library(testthat)


########### 
# Case Study 02

# Case study script
file="week_02/case_study_02.R"

test_that(paste0(file, " file exists"),{
  expect_true(file.exists(file))
})

test_that(paste0(file, " file sources without errors"), {
expect_silent(source(file))
})


test_that(paste0(file, " file includes geom_smooth"), {
  expect_true(grepl("geom_smooth",scan(file))
})

