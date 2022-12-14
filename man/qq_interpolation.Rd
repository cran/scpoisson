% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qq_env_small.R
\name{qq_interpolation}
\alias{qq_interpolation}
\title{Paired quantile after interpolation between two samples}
\usage{
qq_interpolation(dfp, dfq, sample1, sample2)
}
\arguments{
\item{dfp}{A data frame generated from function new_quantile() based on a specific distribution.}

\item{dfq}{Another data frame generated from function new_quantile() based on a specific distribution.}

\item{sample1}{A character to denote sample name of distribution used to generate \code{dfp}.}

\item{sample2}{A character to denote sample name of distribution used to generate \code{dfq}.}
}
\value{
A data frame contains corresponding probability from cumulative distribution function (CDF),
corresponding quantiles from the first sample (\code{dfp}),
and corresponding quantiles from the second sample (\code{dfq}).
}
\description{
This function returns a data frame with paired quantiles in two samples after interpolation.
}
\details{
This is a function for quantile interpolation of two samples.
For each unique quantile value that has original data
point in one sample but no corresponding original data point in another sample,
apply a linear interpolation. So the common quantile values after interpolation
should have unique points the same as unique quantile points from either sample.
}
