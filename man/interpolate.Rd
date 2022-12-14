% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qq_env_small.R
\name{interpolate}
\alias{interpolate}
\title{Linear interpolation for one sample given reference sample}
\usage{
interpolate(df, reference, sample_id)
}
\arguments{
\item{df}{The object data frame requires interpolation.}

\item{reference}{The reference data frame to make comparison.}

\item{sample_id}{A character to denote the object data frame.}
}
\value{
A data frame contains CDF, the sample name, and the corresponding quantiles.
}
\description{
This function returns a data frame with interpolated data points.
}
\details{
This is a function developed to do linear interpolation for corresponding probability
from empirical cumulative distribution function (CDF) and corresponding quantiles.
Given a reference data frame and a data frame needed to do interpolation,
if there are any CDF values in reference but not in object data frame,
do the linear interpolation and insert both CDF values and respective quantiles
to the original object data frame.
}
