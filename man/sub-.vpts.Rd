% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vpts.R
\name{[.vpts}
\alias{[.vpts}
\title{Subset a time series of vertical profiles (\code{vpts})}
\usage{
\method{[}{vpts}(x, i)
}
\arguments{
\item{x}{Object of class \code{vpts}.}

\item{i}{Indices specifying elements to extract.}
}
\description{
Select a vertical profile (\code{vp}) or a time series of vertical profiles
(\code{vpts}) by index from a \code{vpts}
}
\examples{
# we start with the example vertical profile time series:
example_vpts
# extract the 10th profile in the time series (returns a vp object)
example_vpts[10]
# extract the 20th to 100th profile form the time series (returns a vpts object)
example_vpts[20:100]
}
