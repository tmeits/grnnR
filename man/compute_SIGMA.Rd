\name{compute_SIGMA}
\alias{compute_SIGMA}
\title{Compute Gaussian Spread}
\description{
compute an empirical spread value using a convex hull measure on the center vector set
}
\usage{
compute_SIGMA(C)
}
\arguments{
  \item{C}{matrix of center vectors}
}
\details{
a call is made to this function during training for SIGMA flag=1, else traininguses the spread value in SIGMA inp
}
\value{
  \item{SIGMA:}{Gaussian spread}
}
\author{Arnold Arrington}
\keyword{neural}
