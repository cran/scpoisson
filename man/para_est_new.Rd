% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_representation.R
\name{para_est_new}
\alias{para_est_new}
\title{Parameter estimates based on two-way approximation}
\usage{
para_est_new(test_set)
}
\arguments{
\item{test_set}{A UMI count data matrix with genes as rows and cells as columns}
}
\value{
A numeric vector containing parameter estimates from overall offset (first element), gene effect (same order as rows) and cell effect (same order as columns).
}
\description{
This function returns a vector consists of parameter estimates for overall offset,
cell effect, and gene effect.
}
\details{
This is a function used to calculate parameter estimates based on
\eqn{\lambda_{gc}  = e^{\mu + \alpha_g + \beta_c}},
where \eqn{\mu} is the overall offset,
\eqn{\alpha} is a vector with the same length as the number of genes,
and \eqn{\beta} is a vector with the same length as the number of cells.
The order of elements in vectors \eqn{\alpha} or \eqn{\beta} is the same as rows (genes) or
cells (columns) from input data. Be sure to remove cells/genes with all zeros.
}
\examples{
# Matrix as input
test_set <- matrix(rpois(500, 0.5), nrow = 10)
para_est_new(test_set)

}
