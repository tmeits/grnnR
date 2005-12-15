\name{grnn_Train}
\alias{grnn_Train}
\title{Synthesize a GRNN}
\description{
synthesize a grnn using the training dataset}
\usage{
grnn_Train(P, T, SIGMA_flag = 1, SIGMA_inp = 1)
}
\arguments{
  \item{P}{matrix of pattern vectors}
  \item{T}{matrix of target vectors}
  \item{SIGMA_flag}{select empirical spread or user supplied}
  \item{SIGMA_inp}{user supplied Gaussian spread value}
}
\details{
a call is made to the function compute SIGMA for SIGMA flag=1, else uses the spread value supplied in SIGMA inp
}
\value{
  \item{C}{matrix of center vectors}
  \item{W}{matrix of weight vectors}
  \item{SIGMA}{Gaussian spread value}
}
\author{Arnold Arrington}
\keyword{neural}
