

scale_colour_warmCrush_seq_c <- function(name = "Rust", direction = 1, amount = 0.2, ...) {

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
    ...,
    low = low,
    high = high,
    na.value = "gray",
    aesthetics = "colour"
  )
}


scale_color_warmCrush_seq_c <- scale_colour_warmCrush_seq_c
