% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rough_convert.R
\name{generate_background_chart}
\alias{generate_background_chart}
\title{Generate a ggplot gtable with only background elements}
\usage{
generate_background_chart(p, family, font_size_booster)
}
\arguments{
\item{p}{A ggplot plot}

\item{font_size_booster}{A number for `correct_font`}
}
\value{
A ggplot gtable
}
\description{
This function copy a ggplot plot and set all its geoms to `alpha=0`/`size=0`.
`alpha=0` makes most elements invisible. `size=0` helps with some elements
not influenced by `alpha` like bar borders. The goal is to create a plot
object with just the background elements visible.
}
\details{
NOTE: There are probably better way to do this but my attempts to remove
geoms ended up in recalculated scales.
See: https://stackoverflow.com/q/50434608/2008527

The function also include a call to `correct_font()` which lets you
apply a multiplier to all text elements font sizes.
}
