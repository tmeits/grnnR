\name{grnn}
\alias{grnn}
\title{A Generalized Regression Neural Network}
\description{
simulate the grnn defined by C, W, and SIGMA
}
\usage{
grnn(P, C, W, SIGMA, BATCH = 1)
}
\arguments{
  \item{P}{matrix of pattern vectors}
  \item{C}{matrix of center vectors}
  \item{W}{matrix of weight vectors}
  \item{SIGMA}{Gaussian spread value}
  \item{BATCH}{(=1) specifies batch-mode, default}
}
\details{
patterns, P, are input to produce output estimate T hat. Argument "BATCH" (0,1)=1 specifies batch simulation (default)
}
\value{
  \item{T_hat}{matrix of estimated target vectors}
}
\author{Arnold Arrington}
\keyword{neural}
