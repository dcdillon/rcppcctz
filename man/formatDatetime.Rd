% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{formatDatetime}
\alias{formatDatetime}
\alias{formatDouble}
\title{Format a Datetime vector as a string vector}
\usage{
formatDatetime(dtv, fmt = "\%Y-\%m-\%dT\%H:\%M:\%E*S\%Ez", lcltzstr = "UTC",
  tgttzstr = "UTC")

formatDouble(secv, nanov, fmt = "\%Y-\%m-\%dT\%H:\%M:\%E*S\%Ez",
  tgttzstr = "UTC")
}
\arguments{
\item{dtv}{A Datetime vector object to be formatted}

\item{fmt}{A string with the format, which is based on \code{strftime} with some
extensions; see the CCTZ documentation for details.}

\item{lcltzstr}{The local timezone object for creation the CCTZ timepoint}

\item{tgttzstr}{The target timezone for the desired format}

\item{secv}{A numeric vector with seconds since the epoch}

\item{nanov}{A numeric vector with nanoseconds since the epoch,
complementing \code{secv}.}
}
\value{
A string vector with the requested format of the datetime objects
}
\description{
Format a Datetime vector
}
\details{
An alternative to \code{format.POSIXct} based on the CCTZ library. The
\code{formatDouble} variant uses two vectors for seconds since the epoch 
and fractional nanoseconds, respectively, to provide fuller resolution.
}
\examples{
now <- Sys.time()
formatDatetime(now)            # current (UTC) time, in full precision RFC3339
formatDatetime(now, tgttzstr="America/New_York")  # same but in NY
formatDatetime(now + 0:4)	   # vectorised
}
\author{
Dirk Eddelbuettel
}

