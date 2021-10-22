
#' @title Colours for discrete value in a plot.
#'
#' @param primary This is the primary colour chosen for plotting.
#' @param other This other colour for the palette.
#' @param direction This is a numeric value to set the direction of the color scale i.e. if the direction is < 0, the direction of colour changes.
#'
#'
#' @return Colour outline for the plots
#'
#' @example
#' scale_colour_warmCrush_d(direction = -1)
#'
#'
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



#' Fill for discrete value in a plot.
#'
#' @param primary This is the primary colour chosen for plotting.
#' @param other This other colour for the palette.
#' @param direction This is a numeric value to set the direction of the color scale i.e. if the direction is < 0, the direction of colour changes.
#'
#' @return colours inside the plot
#'
#' @example
#' scale_fill_warmCrush_d(direction = -1)
#'
#'
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

