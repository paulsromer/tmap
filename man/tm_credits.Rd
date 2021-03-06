% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tm_misc_elements.R
\name{tm_credits}
\alias{tm_credits}
\title{Credits text}
\usage{
tm_credits(
  text,
  size = 0.7,
  col = NA,
  alpha = NA,
  align = "left",
  bg.color = NA,
  bg.alpha = NA,
  fontface = NA,
  fontfamily = NA,
  position = NA,
  width = NA,
  just = NA
)
}
\arguments{
\item{text}{text. Multiple lines can be created with the line break symbol \code{"\\n"}. Facets can have different texts: in that case a vector of characters is required. Use \code{""} to omit the credits for specific facets.}

\item{size}{relative text size}

\item{col}{color of the text. By default equal to the argument \code{attr.color} of \code{\link{tm_layout}}.}

\item{alpha}{transparency number between 0 (totally transparent) and 1 (not transparent). By default, the alpha value of \code{col} is used (normally 1).}

\item{align}{horizontal alignment: \code{"left"} (default), \code{"center"}, or \code{"right"}. Only applicable if \code{text} contains multiple lines}

\item{bg.color}{background color for the text}

\item{bg.alpha}{Transparency number between 0 (totally transparent) and 1 (not transparent). By default, the alpha value of the \code{bg.color} is used (normally 1).}

\item{fontface}{font face of the text. By default, determined by the fontface argument of \code{\link{tm_layout}}.}

\item{fontfamily}{font family of the text. By default, determined by the fontfamily argument of \code{\link{tm_layout}}.}

\item{position}{position of the text. Vector of two values, specifying the x and y coordinates. Either this vector contains "left", "LEFT", "center", "right", or "RIGHT" for the first value and "top", "TOP", "center", "bottom", or "BOTTOM" for the second value, or this vector contains two numeric values between 0 and 1 that specifies the x and y value of the center of the text. The uppercase values correspond to the position without margins (so tighter to the frame). The default value is controlled by the argument \code{"attr.position"} of \code{\link{tm_layout}}.}

\item{width}{the width of the credits text box, a numeric value that is relative to the map area (so 1 means the whole map width). By default (\code{NA}), it is determined by the width of the text. Tip: set \code{bg.color} to see the result.}

\item{just}{Justification of the attribute relative to the point coordinates.  The first value specifies horizontal and the second value vertical justification. Possible values are: \code{"left"} , \code{"right"}, \code{"center"}, \code{"bottom"}, and \code{"top"}. Numeric values of 0 specify left/bottom alignment and 1 right/top alignment. This option is only used, if \code{position} is specified by numeric coordinates. The default value is controlled by the argument \code{"attr.just"} of \code{\link{tm_layout}}.}
}
\description{
Creates a text annotation that could be used for credits or acknowledgements.
}
\examples{
current.mode <- tmap_mode("plot")

data(NLD_muni, NLD_prov)

tm_shape(NLD_muni) +
    tm_fill(col="population", convert2density=TRUE, 
        style="kmeans", title = expression("Population (per " * km^2 * ")")) +
    tm_borders("grey25", alpha=.5) + 
    tm_shape(NLD_prov) +
    tm_borders("grey40", lwd=2) +
tm_format("NLD", bg.color="white", frame = TRUE) +
tm_credits("(c) Statistics Netherlands (CBS) and\nKadaster Nederland", position=c("left", "bottom"))

# restore current mode
tmap_mode(current.mode)
}
\seealso{
\code{\link{tm_xlab}}
}
