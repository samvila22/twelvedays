library(testthat)
library(twelvedays)

test_check("twelvedays")

test_check("pluralize_gift")

context("changing all input strings into plural")

test_that("running inputs that arent strings", {

  expect_error( pluralize_gift(1) )

})
#returns "please enter a character object

test_that(inputting_character, {

  x <- "samuel"
  expect_equal( returns: "samuels" )

  x <- "party"
  expect_equal( returns : "parties")

})


