
flip_lookup <- c(
  xmin = "ymin", xmax = "ymax", xend = "yend", x = "y",
  ymin = "xmin", ymax = "xmax", yend = "xend", y = "x",
  xintercept = "yintercept", xmin_final = "ymin_final",
  xmax_final = "ymax_final", yintercept = "xintercept",
  ymin_final = "xmin_final", ymax_final = "xmax_final",
  x_scales = "y_scales", y_scales = "x_scales",
  SCALE_X = "SCALE_Y", SCALE_Y = "SCALE_X",
  height = "width", width = "height",
  xlower = "lower", xmiddle = "middle", xupper = "upper",
  lower = "xlower", middle = "xmiddle", upper = "xupper"
)


flip_aes <- function(x) {
  UseMethod("flip_aes")
}

flip_aes.character <- function(x) {
  flipped <- flip_lookup[x]
  x[!is.na(flipped)] <- flipped[!is.na(flipped)]
  x
}

flip_aes.data.frame <- function(x) {
  names(x) <- flip_aes(names(x))
  x
}

flip_aes.panel <- function(x) {
  names(x) <- flip_aes(names(x))
  x$layout <- flip_aes(x$layout)
  x
}

flip_aes.list <- flip_aes.data.frame
flip_aes.uneval <- flip_aes.data.frame
flip_aes.NULL <- identity
