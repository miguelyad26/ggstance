#' Horizontal box and whiskers plot.
#'
#' Horizontal version of \code{\link[ggplot2]{geom_boxplot}()}.
#' @inheritParams ggplot2::geom_boxplot
#' @inheritParams ggplot2::geom_point
#' @export
geom_boxploth <- function(mapping = NULL, data = NULL,
                          stat = "boxploth", position = "dodgev",
                          ...,
                          outlier.colour = NULL,
                          outlier.color = NULL,
                          outlier.shape = 19,
                          outlier.size = 1.5,
                          outlier.stroke = 0.5,
                          notch = FALSE,
                          notchwidth = 0.5,
                          varwidth = FALSE,
                          na.rm = FALSE,
                          show.legend = NA,
                          inherit.aes = TRUE) {
  ggplot2::layer(
    data = data,
    mapping = mapping,
    stat = stat,
    geom = GeomBoxploth,
    position = position,
    show.legend = show.legend,
    inherit.aes = inherit.aes,
    params = list(
      outlier.colour = outlier.colour,
      outlier.shape = outlier.shape,
      outlier.size = outlier.size,
      outlier.stroke = outlier.stroke,
      notch = notch,
      notchwidth = notchwidth,
      varwidth = varwidth,
      na.rm = na.rm,
      ...
    )
  )
}

#' @rdname ggstance-ggproto
#' @format NULL
#' @usage NULL
#' @include legend-draw.R
#' @export
GeomBoxploth <- flip_geom(ggplot2::GeomBoxplot,
  draw_key = draw_key_boxploth,
  draw_group = flip_method_inner(ggplot2::GeomBoxplot$draw_group)
)
