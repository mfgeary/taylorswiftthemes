scale_colour_taylorswift <- function(..., type = "seq", palette = 1, direction = 1, aesthetics = "colour") {
  discrete_scale(aesthetics, "brewer", brewer_pal(type, palette, direction), ...)
}
