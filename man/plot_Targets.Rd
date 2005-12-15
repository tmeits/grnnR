\name{plot_Targets}
\alias{plot_Targets}
\title{Plot Targets vs. Neural Net Estimates}
\description{
plot error linearity between targets and grnn estimates
}
\usage{
plot_Targets(T, T_hat, BATCH)
}
\arguments{
  \item{T}{targets}
  \item{T_hat}{neural net estimates}
  \item{BATCH}{batch mode (default) data}
}
\details{
Both online (BATCH=0) and batch (BATCH=1) plotting is provided.
}
\author{Arnold Arrington}
\keyword{neural}
