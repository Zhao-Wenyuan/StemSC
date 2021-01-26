\name{StemSC}
\alias{StemSC}
\title{StemSC}
\usage{
StemSC(Exp)
}
\arguments{
  \item{Exp}{A dataframe with gene expression values (RPKM) where columns are cells and rows are Entrez gene IDs.The within-sample standardization does not change the results, such as TPM and log transformation.}
}
\value{
A vector of stemness values of the input single-cell samples.
}
\description{
Calculating the stemness individually  for single-cell samples.
}
\examples{
stemness=StemSC(Exp)
}
