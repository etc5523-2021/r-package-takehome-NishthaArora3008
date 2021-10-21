scale_colour_warmCrush_d <- function(
  primary = "Green",
  other = "Copper",
  direction = 1,
  ...
) {
  ggplot2::discrete_scale(
    "colour", "warmCrush",
    warmCrush_pal (primary, other, direction),
    ...
  )
}

scale_color_warmCrush_d <- scale_colour_warmCrush_d



scale_fill_warmCrush_d <- function(
  primary = "Green",
  other = "Copper",
  direction = 1,
  ...
) {
  ggplot2::discrete_scale(
    "fill", "warmCrush",
    warmCrush_pal (primary, other, direction),
    ...
  )
}
