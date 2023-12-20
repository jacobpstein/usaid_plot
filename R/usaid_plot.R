#' Create plots with USAID's color palette
#'
#' @import ggplot2
#' @import extrafont
#' @import extrafontdb
#'
#' @param data_type A value to denote either "discrete" or "continuous" data are being graphed. "discrete" is the default.
#'
#' @return Returns a ggplot2 theme
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(x = wt, y = mpg)) +
#' geom_point(aes(fill = factor(gear)), shape = 21, stroke = 1, col = "white", size = 6) +
#' usaid_plot()

usaid_plot <- function(data_type = "discrete") {
  scales <- list(
    ggplot2::theme(
      legend.position = "NA",
      legend.background = ggplot2::element_blank(),
      legend.title = ggplot2::element_blank(),
      legend.key = ggplot2::element_blank(),
      axis.ticks = ggplot2::element_blank(),
      axis.line = ggplot2::element_blank(),
      panel.grid.minor = ggplot2::element_blank(),
      panel.grid.major.y = ggplot2::element_line(color = "#CFCDC9"),
      panel.grid.major.x = ggplot2::element_line(color = "#CFCDC9"),
      panel.background = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = "white"),
      plot.title.position = "plot",
      plot.title = element_text(size = 28, family = "Gill Sans", color = "black"),
      plot.subtitle = element_text(size = 20, family = "Gill Sans", color = "black"),
      plot.caption = element_text(size = 16, family = "Gill Sans", color = "black"),
      text = element_text(size = 22, family = "Gill Sans", color = "black")
    )
  )

  if (data_type == "discrete") {
    scales <- c(
      scales,
      ggplot2::scale_fill_manual(values = rep(c("#002F6C", "#BA0C2F", "#0067B9", "#6C6463", "#651D32", "#A7C6ED", "#8C8985"), 500)),
      ggplot2::scale_color_manual(values = rep(c("#002F6C", "#BA0C2F", "#0067B9", "#6C6463", "#651D32", "#A7C6ED", "#8C8985"), 500))
    )
  } else if (data_type == "continuous") {
    scales <- c(
      scales,
      ggplot2::scale_fill_gradient(low = "#002F6C", high = "#BA0C2F"),
      ggplot2::scale_color_gradient(low = "#002F6C", high = "#BA0C2F")
    )
  }

  return(scales)
}
