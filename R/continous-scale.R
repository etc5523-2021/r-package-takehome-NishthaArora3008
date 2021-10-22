#' Colours for continuous scale
#'
#' @param name Name of the colour which is default.
#' @param direction This is a numeric value to set the direction of the color scale i.e. if the direction is < 0, the direction of colour changes.
#' @param amount This is the level of luminance.A negative value changes the direction of luminance.
#'
#' @return Colour in the plot with different levels of luminance.
#'
#' @example
#' scale_colour_warmCrush_seq_c(name="Rust", direction = 1, amount=0.7)
#'
#' @rdname scale_colour_warmCrush_seq_c
#' @export


scale_colour_warmCrush_seq_c <- function(name = "Rust", direction = 1, amount = 0.7) {

  if (!name %in% names(warmCrush_colours))
  {

    stop(paste0("Color not in palette", names(warmCrush_colours)))


  }
  low = warmCrush_colours[[name]]

  high = colorspace::lighten(warmCrush_colours[[name]], amount = amount, space = "combined", fixup = TRUE)

  if (direction < 0){
    temp = low
    low = high
    high = temp
  }

  ggplot2::scale_color_gradient(
    low = low,
    high = high,
    na.value = "gray",
    aesthetics = "colour"
  )
}

#' Colors for continuous scale
#'
#' @param name Name of the color which is default.
#' @param direction This is a numeric value to set the direction of the color scale i.e. if the direction is < 0, the direction of colour changes.
#' @param amount This is the level of luminance.A negative value changes the direction of luminance.
#'
#' @return Color in the plot with different levels of luminance.
#'
#' @example
#' scale_color_warmCrush_seq_c(name="Rust", direction = 1, amount=0.7)
#'
#' @rdname scale_color_warmCrush_seq_c
#' @export
scale_color_warmCrush_seq_c <- scale_colour_warmCrush_seq_c
