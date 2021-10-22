
#' @title this is title
#'
#' @param primary
#' @param other
#' @param direction a numeric value to set the direction of the color scale if direction is < 0 switch the direction
#'
#' @return colour
#' @export scale_colour_warmCrush_d
#'


scale_colour_warmCrush_d <- function(
  primary = "Green",
  other = "Copper",
  direction = 1
) {
  ggplot2::discrete_scale(
    "colour", "warmCrush",
    warmCrush_pal (primary, other, direction)
  )
}

#'@export
scale_color_warmCrush_d <- scale_colour_warmCrush_d



#' Title
#'
#' @param primary
#' @param other
#' @param direction a numeric value to set the direction of the color scale if direction is < 0 switch the direction
#' @param ... something happens
#'
#' @return fill
#' @export scale_fill_warmCrush_d


scale_fill_warmCrush_d <- function(
  primary = "Green",
  other = "Copper",
  direction = 1
) {
  ggplot2::discrete_scale(
    "fill", "warmCrush",
    warmCrush_pal (primary, other, direction)
  )
}

