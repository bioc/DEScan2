% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/finalRegionFunctions.R
\name{findOverlapsOverSamples}
\alias{findOverlapsOverSamples}
\title{findOverlapsOverSamples}
\usage{
findOverlapsOverSamples(
  samplePeaksGRangelist,
  extendRegions = 200,
  minOverlap = 0L,
  maxGap = -1L,
  zThresh = 10,
  verbose = FALSE,
  scorecolname = "z-score",
  coverageFlag = FALSE
)
}
\arguments{
\item{samplePeaksGRangelist}{given a granges list of samples finds
the overlapping regions between them.}

\item{extendRegions}{the number of bases to extend each region at its start
and end.}

\item{minOverlap}{the minimum overlap each peak needs to have.
(see ChipPeakAnno::findOverlapsOfPeaks)}

\item{maxGap}{the maximum gap admissible between the peaks.
(see ChipPeakAnno::findOverlapsOfPeaks)}

\item{zThresh}{a threshold value on z-score/scorecolname}

\item{verbose}{verbose flag}

\item{scorecolname}{character describing the name of the column within the
peaks score.}

\item{coverageFlag}{boolean indicating if to compute the scores in a coverage
mode (sum of the reads of merged peak) or in a score mode
(a normalized score across the merged peaks)}
}
\value{
a GRanges of peaks overlapped and unique between samples.
}
\description{
given in input a GRangeList where each element is a sample
computes the coverage extending a both direction window of prefixed length.
}
\examples{
(peaks.file <- system.file("extdata/peaks/RData/peaksGRL_all_files.rds",
                            package="DEScan2"))
peaksGRLFiles <- readRDS(peaks.file)
(overlPeaks <- findOverlapsOverSamples(peaksGRLFiles))
}
