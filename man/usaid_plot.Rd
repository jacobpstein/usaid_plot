% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/usaid_plot.R
\name{usaid_plot}
\alias{usaid_plot}
\title{Create plots with USAID's color palette}
\usage{
usaid_plot(data_type = "discrete", ppt = FALSE)
}
\arguments{
\item{data_type}{A value to denote either "discrete" or "continuous" data are being graphed. "discrete" is the default.}

\item{ppt}{A TRUE or FALSE option that changes the plot and facet background to match USAID's PowerPoint template colors.}
}
\value{
Returns a ggplot2 theme
}
\description{
Create plots with USAID's color palette
}
\examples{
\dontrun{
library(ggplot2)
ggplot(mtcars, aes(x = wt, y = mpg)) +
geom_point(aes(fill = factor(gear)), shape = 21, stroke = 1, col = "white", size = 6) +
usaid_plot(ppt=TRUE)
}
}
