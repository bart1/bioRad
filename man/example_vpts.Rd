% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{example_vpts}
\alias{example_vpts}
\title{Example object of class \code{vpts}}
\format{An object of class \code{vpts} of dimension 25 x 1934 x 15.}
\usage{
example_vpts
}
\description{
Example of a \code{\link[=summary.vpts]{vpts}} object (a time series of
vertical profiles) with name \code{example_vpts}.
}
\examples{
# get summary of example vpts:
summary(example_vpts)

# example_vpts was created with:
\dontrun{
vptsfile <- system.file("extdata", "vpts.txt.zip", package = "bioRad")
unzip(vptsfile, exdir = (dirname(vptsfile)), junkpaths = T)
vptsfile <- substr(vptsfile, 1, nchar(vptsfile) - 4)
example_vpts <- read_vpts(vptsfile, radar = "KBGM", wavelength = "S")
rcs(example_vpts) <- 11
sd_vvp_threshold(example_vpts) <- 2
example_vpts$attributes$where$lat <- 42.2
example_vpts$attributes$where$lon <- -75.98
save(example_vpts, file = "data/example_vpts.rda", compress = "xz")
}
}
\keyword{datasets}
