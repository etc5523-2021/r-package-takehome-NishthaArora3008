
#' warmCrush colours
#' @import ggplot2
#' @import colorspace
#'
#'
#' @examples
#' warmCrush_colours
#' @rdname warmCrush_colours
#' @export warmCrush_colours
#'
warmCrush_colours <- list(

  "Copper" = "#595952",
  "Brown" = "#9A7055",
  "Green" = "#70B981",
  "Orange" = "#EE9E28",
  "Rust" = "#BE4F02",
  "Peach" = "#F5A69B",
  "Blue" = "#638EEB",
  "Purple" = "#AB6CD8"

)



#'  urbanC colour palette warmCrush
#'
#' @param primary This is the primary colour chosen for plotting.
#' @param other This other colour for the palette.
#' @param direction This is a numeric value to set the direction of the color scale i.e. if the direction is < 0, the direction of colour changes.
#'
#' @return colours for the palette
#'
#' @example
#' warmCrush_pal(primary = "Green", other = "Copper", direction = 1)
#'
#' @rdname warmCrush_pal
#' @export
#'

warmCrush_pal <- function(
  primary = "Green",
  other = "Copper",
  direction = 1
) {
  stopifnot(primary %in% names(warmCrush_colours))

  function(n) {
    if (n > 8) warning("The no. of observations is greater than than palette colors")

    if (n == 2) {
      other <- if (!other %in% names(warmCrush_colours)) {
        other
      } else {
        warmCrush_colours[other]
      }
      color_list <- c(other, warmCrush_colours[primary])
    } else {
      color_list <- warmCrush_colours[1:n]
    }

    color_list <- unname(unlist(color_list))
    if (direction >= 0) color_list else rev(color_list)
  }
}
