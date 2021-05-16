#' Produces the string for one day of the song.
#'
#' @param dataset A data frame containing information about gifts
#' @param line The number of the line for the day you want to sing about
#' @param phrase_col The variable name for the column in the dataset that
#' contains the gift phrases
#'
#' @return A string singing the line of the song with all gifts for the given day.
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
sing_day <- function(dataset, line, phrase_col){

  return_str <- function(x) {
    return(x)
  }
  phrases <- dataset %>%
    filter(Day <= line) %>%
    pull({{phrase_col}})
  phrase <- map_chr(phrases, return_str) %>%
    cat(sep = "and")
  #map over phrase col in dataset line amount of times
  f_line <- dataset %>%
    filter(Day == line) %>%
    select(Day.In.Words)
  f_phrase <- glue("On the {f_line} day of Christmas, my true love sent to me: {phrase}")


  return(f_phrase)


}
