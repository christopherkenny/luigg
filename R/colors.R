#' Mario Brothers Color Palettes
#'
#' Color palettes from various Mario/Nintendo games
#'
#' Included palettes:
#' - **super_mario**, Super Mario Bros. palette (from Politis et al 2017)
#' - **double_dash**, Mario Kart Double Dash palette
#'
#'
#' @references Dionysios Politis et. al. International Journal of New Technologies in Science and Engineering
#' Vol. 4, Issue. 1, Jan 2017, ISSN 2349-0780
#'
#' @format list of character vectors of type `c('palette', 'character')`
#'
#' @concept colors
#' @export
#'
#' @examples
#' plot(luigg$super_mario)
#'
luigg <- list(
  super_mario = structure(
    c(
      cornflower = '#6185F8', saddle = '#954B0C', green = '#138200', tulip = '#EEAF36',
      kimberly = '#645F89', lawn = '#73F218', olive = '#716804', dark_green = '#043717',
      harly = '#B72504'
    ),
    class = c('palette', 'character')
  ),
  double_dash = structure(
    c(
      mario = '#C50000', luigi = '#30B31E', peach = '#FDB2CF', daisy = '#FFF943',
      dk = '#8D3F1C', waluigi = '#661DA7', toad = '#000F9A', bowser = '#255200',
      toadette = '#F77AD1', wario = '#FFFE0D'
    ),
    class = c('palette', 'character')
  )
)
