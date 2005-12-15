\name{test_Stats}
\alias{test_Stats}
\title{Produce Error Plots}
\description{
produce several error statistic plots: targets vs estimates, box-whisker, histogram, and density
}
\usage{
test_Stats(T, T_hat, NOVAL=NA)
}
\arguments{
  \item{T}{targets}
  \item{T_hat}{neural net estimates}
  \item{NOVAL}{missing data parameter (default=NA)}
}
\details{
NOVAL parameter provides value substition for missing data
}
\author{Arnold Arrington}
\keyword{neural}
