% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/radviz.R
\name{radviz}
\alias{radviz}
\title{Radial Coordinates Plots}
\usage{
radviz(dat, group = NULL, color = NULL, hjust = 0, vjust = 0,
  alpha = 1)
}
\arguments{
\item{dat}{A matrix with \code{m} rows and \code{n} columns, where columns represent dimensions.}

\item{group}{A vector of length \code{m}, specifying groups (e.g., phenotypes or conditions for \code{m} samples).}

\item{color}{A vector of hex color codes to represent groups.}

\item{hjust}{A parameter to horizontally adjust axis names around the circle; \code{hjust} arguments for \code{geom_text}}

\item{vjust}{A parameter to vertically adjust axis names around the circle; \code{vjust} arguments for \code{geom_text}}

\item{alpha}{A numeric value for transparency.}
}
\value{
\code{svd.radial} creates and draws a figure, which is a \code{ggplot} object.
}
\description{
Creates radial coordinates plots, with m variables (rows) and n samples (columns).
Each variable is mapped onto a circle, using data points as spring constants.
Each column is re-scaled to have numeric values between 0 and 1.
}
\examples{
set.seed(1234)
dat = matrix(rnorm(9*4), 9, 4, dimnames=list(paste(1:9),letters[1:4]))
radviz(dat, group=c(rep("Group 1",3),rep("Group 2",3),rep("Group 3",3)))
}
\author{
Neo Christopher Chung \email{nchchung@gmail.com}
}
\references{
Ankerst M., Keim D. A., Kriegel H.-P. Circle Segments: A Technique for Visually Exploring Large Multidimensional Data Sets, IEEE Visualization, 1996.

K.A. Olsen, R.R. Korfhage, K.M. Sochats, M.B. Spring and J.G. Williams. Visualisation of a Document Collection: The VIBE System, Information Processing and Management, Vol. 29, No. 1, pp. 69-81, Pergamon Press Ltd, 1993.
}
\seealso{
\link{svd.radial}
}

