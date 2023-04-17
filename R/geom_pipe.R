# https://github.com/tidyverse/ggplot2/blob/2e649bbc8ee2778a73043b4ffd4cf90f84bf0acf/R/geom-bar.R#L109
# warp pipe: https://www.mariowiki.com/Warp_Pipe
geom_pipe <- function(mapping = NULL, data = NULL,
                      stat = "identity", position = "identity",
                      ...,
                      just = 0.5,
                      width = NULL,
                      na.rm = FALSE,
                      orientation = NA,
                      show.legend = NA,
                      inherit.aes = TRUE) {
  ggplot2::layer(
    data = data,
    mapping = mapping,
    stat = stat,
    geom = GeomPipe,
    position = position,
    show.legend = show.legend,
    inherit.aes = inherit.aes,
    params = rlang::list2(
      just = just,
      width = width,
      na.rm = na.rm,
      orientation = orientation,
      ...
    )
  )
}

#' @rdname geom_pipe
#' @format NULL
#' @usage NULL
#' @export
GeomPipe <- ggplot2::ggproto('GeomPipe', Geom,
                             required_aes = c('x', 'y'),

)
