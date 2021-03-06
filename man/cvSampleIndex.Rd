% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/G2P.r
\name{cvSampleIndex}
\alias{cvSampleIndex}
\title{Generate Sample Indices for Training Sets and Testing Sets}
\usage{
cvSampleIndex(sampleNum, cross = 5, seed = 1, randomSeed = FALSE)
}
\arguments{
\item{sampleNum}{The number of samples needed to be partitioned into training and testing sets.}

\item{cross}{The fold of cross validation.}

\item{seed}{An integer used as the seed for data partition. The default value is 1.}

\item{randomSeed}{Logical variable, default FALSE.}
}
\value{
A list and each element including $trainIdx $testIdx and $cvIdx

$trainIdx  The index of training samples.

$testIdx   The index of testing samples.

$cvIdx     The cross validation index.
}
\description{
This function generates indices for samples in training and testing sets for performing the N-fold cross validation experiment.
}
\examples{
\dontrun{
## Load example data ##
data(GYSS)
## leave-one out cross validation
a <- cvSampleIndex(sampleNum = nrow(Markers), cross = nrow(Markers), seed = 1)

## 5-fold cross validation
b <- cvSampleIndex(sampleNum = nrow(Markers), cross = 5, seed = 1)
}
}
\author{
Chuang Ma, Qian Cheng, Zhixu Qiu
}
