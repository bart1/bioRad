% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/project_as_ppi.R
\name{project_as_ppi}
\alias{project_as_ppi}
\alias{project_as_ppi.param}
\alias{project_as_ppi.scan}
\title{Project a scan (\code{scan}) or parameter (\code{param}) to a plan
position indicator (\code{ppi})}
\usage{
project_as_ppi(x, grid_size = 500, range_max = 50000, project = TRUE,
  ylim = NULL, xlim = NULL, k = 4/3, re = 6378, rp = 6357)

\method{project_as_ppi}{param}(x, grid_size = 500, range_max = 50000,
  project = FALSE, ylim = NULL, xlim = NULL, k = 4/3, re = 6378,
  rp = 6357)

\method{project_as_ppi}{scan}(x, grid_size = 500, range_max = 50000,
  project = FALSE, ylim = NULL, xlim = NULL, k = 4/3, re = 6378,
  rp = 6357)
}
\arguments{
\item{x}{An object of class \code{param} or \code{scan}.}

\item{grid_size}{Cartesian grid size in m or a RasterLayer defining the full topology.}

\item{range_max}{Maximum range in m.}

\item{project}{Whether to vertically project onto earth's surface.}

\item{ylim}{The range of latitudes to include.}

\item{xlim}{The range of longitudes to include.}

\item{k}{Standard refraction coefficient.}

\item{re}{Earth equatorial radius in km.}

\item{rp}{Earth polar radius in km.}
}
\value{
An object of class '\link[=summary.ppi]{ppi}'.
}
\description{
Make a plan position indicator (ppi)
}
\details{
The returned PPI is in Azimuthal Equidistant Projection.
}
\section{Methods (by class)}{
\itemize{
\item \code{param}: Project as \code{ppi} for a single scan parameter.

\item \code{scan}: Project multiple \code{ppi}'s for all scan
parameters in a scan
}}

\examples{
# load a polar scan example object
data(example_scan)
example_scan
# make PPIs for all scan parameters in the scan:
ppi <- project_as_ppi(example_scan)
# print summary info for the ppi:
ppi
# copy the first scan parameter of the first scan in the volume to a new
# object 'param':
param <- example_scan$params[[1]]
# make a ppi for the new 'param' object:
ppi <- project_as_ppi(param)
# print summary info for this ppi:
ppi
}
