# warp pipe: https://www.mariowiki.com/Warp_Pipe
#' Title
#'
#' @inheritParams ggplot2::geom_polygon
#'
#' @return a `ggplot`
#' @export
#'
#' @examples
#' set.seed(1)
#' data.frame(x = as.character(1:4), n = 100 * runif(n = 4, 0, .5)) |>
#'  ggplot2::ggplot(ggplot2::aes(x = x, y = n, fill = x)) +
#'   geom_pipe() +
#'   scale_fill_luigg(palette = 'warp_pipe') +
#'   ggplot2::theme_void()
geom_pipe <- function(mapping = NULL, data = NULL,
                      stat = 'identity', position = 'identity',
                      rule = 'evenodd',
                      ...,
                      na.rm = FALSE,
                      show.legend = NA,
                      inherit.aes = TRUE) {
  ggplot2::layer(
    data = data,
    mapping = mapping,
    stat = StatPipe,
    geom = ggplot2::GeomPolygon,
    position = position,
    show.legend = show.legend,
    inherit.aes = inherit.aes,
    params = rlang::list2(
      na.rm = na.rm,
      rule = rule,
      ...
    )
  )
}

#' @rdname geom_pipe
#' @format NULL
#' @usage NULL
#' @export
StatPipe <- ggplot2::ggproto('StatPipe', ggplot2::Stat,
  required_aes = c('x', 'y'),
  compute_group = function(data, scales, width = 1) {
    pipe_shape <- data.frame(
      x = c(.1, .1, 0, 0, 1, 1, .9, .9),
      y = c(0, .8, .8, 1, 1, .8, .8, 0)
    )
    x_out <- (data$x - width / 2) + (width * pipe_shape$x)
    y_out <- data$y * pipe_shape$y
    data.frame(x = x_out, y = y_out)
  }
)
