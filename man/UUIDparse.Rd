% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/UUIDparse.R
\name{UUIDparse}
\alias{UUIDparse}
\title{Parse/validate UUIDs}
\usage{
UUIDparse(x, validate.only = FALSE)
}
\arguments{
\item{x}{A character vector}

\item{validate.only}{A logical vector of length 1 specifying whether to return the parsed result
as a \code{\linkS4class{UUIDList}} object, or to only return the result of a
validation check as a logical vector}
}
\value{
\describe{
  \item{If \code{validate.only} is \code{TRUE}:}{
    A logical vector of the same length as \code{x}, indicating whether each
    input value is one of the following:
    \describe{
      \item{\code{TRUE}}{The input value represents a valid UUID.}
      \item{\code{FALSE}}{The input value does not represent a valid UUID.}
      \item{\code{NA}}{The input value is \code{NA}.}
    }
  }
  \item{If \code{validate.only} is \code{FALSE}:}{
    A \code{UUIDList} object of the same length as \code{x}, in which the
    \code{elementMetadata} slot contains a \code{\linkS4class{DataFrame}}
    with a single column named \code{valid} that contains the validation
    vector described above.
  }
}
}
\description{
This function parses a character vector that may contain zero or more
Universally Unique Identifiers (UUIDs).
}
\examples{
uuids <- replicate(10, UUIDgenerate())
# Returns a UUIDList of length 10
UUIDparse(uuids)
# Extracts the validation vector from the UUIDList
S4Vectors::mcols(UUIDparse(uuids))$valid
# Returns only the validation vector
UUIDparse(uuids, validate.only=TRUE)
# Returns a nil UUID, without a warning
UUIDparse("00000000-0000-0000-0000-000000000000")[[1]]
UUIDparse(NA_character_)[[1]]
# Returns a nil UUID, with a warning
UUIDparse("not a valid UUID")[[1]]
}
\author{
Adam C. Gower \email{agower@bu.edu},
based on libuuid by Theodore Ts'o and code by Murat Tasan.
}
