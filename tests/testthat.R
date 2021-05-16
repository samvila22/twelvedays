library(testthat)
library(twelvedays)

test_check("twelvedays")

test_check("pluralize_gift")

context("changing all input strings into plural")

test_that("running inputs that arent characters", {

  expect_error( pluralize_gift(1) )

})
#returns "please enter a character object

test_that(inputting_character, {

  x <- "samuel"
  expect_equal( returns: "samuels" )

  x <- "party"
  expect_equal( returns : "parties")

})

test_check("make_phrase")

context("making a phrase from all inputs")

test_that("running inputs that arent characters", {

  expect_error( make_phrase("please", "don't", 1) )

})
#returns "please enter character objects"

test_that(inputting_characters, {

  num <- 4
  num_word <- "four"
  item <- "birds"
  verb <- "meandering"
  adjective <- "laterally"
  location <- "to the moon"
  expect_equal( returns : "four birds meandering laterally to the moon")

  num <- 6
  num_word <- "sixth"
  item <- "flappers"
  verb <- "flapping"
  adjective <- "independently"
  location <- "at the assistant"
  expect_equal( returns : "six flappers flapping indepedently at the assistant")
})

test_check("sing_day")

context("singing the song with all days descriptions at a certain line")

test_that("running inputs that are incorrect", {

  expect_error( make_phrase(xmas, "4", Full.Phrase) )

})
#returns object error for the 4, must be an integer

test_that(inputting_characters, {

  dataset <- xmas
  line <- 4
  phrase_col <- Full.Phrase
  expect_equal( returns : "On the fourth day of Christmas, my true love sent to me,
four birds calling, three hens french, two turtle doves
and a partridge in a pear tree.")

  dataset <- xmas
  line <- 3
  phrase_col <- Full.Phrase
  expect_equal( returns : "On the third day of Christmas, my true love sent to me,
three hens french, two turtle doves
and a partridge in a pear tree.")
})
