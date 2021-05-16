#' Takes a noun and makes it plural
#'
#' @param gift A string or vector of strings
#'
#' @return A string or vector of strings with the pluralized words
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
pluralize_gift <- function(gift){
  if (str_detect(gift, "y$") == TRUE) {
    f_gift <- str_replace(gift, "y$", "ies")
  } else if (str_detect(gift, "oose$") == TRUE) {
    f_gift <- str_replace(gift, "oose$", "eese")
  } else if (str_detect(gift, "aid$") == TRUE) {
    f_gift <- str_replace(gift, "aid$", "aides")
  } else if(class(gift) != "character") {
    stop("enter a character object")
  } else {
    s <- "s"
    f_gift = paste(gift,s,sep="")
  }


  return(f_gift)

}
