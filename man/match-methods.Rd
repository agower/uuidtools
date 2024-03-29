% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/methods.R
\name{match}
\alias{match}
\alias{match,UUID,UUIDList-method}
\alias{match,UUIDList,UUIDList-method}
\title{UUID value matching}
\usage{
\S4method{match}{UUID,UUIDList}(x, table, nomatch = NA_integer_, incomparables = NULL, ...)

\S4method{match}{UUIDList,UUIDList}(x, table, nomatch = NA_integer_, incomparables = NULL, ...)
}
\arguments{
\item{x}{A \code{\linkS4class{UUID}} or \code{\linkS4class{UUIDList}} object}

\item{table}{A \code{\linkS4class{UUIDList}} object}

\item{nomatch}{The value to be returned in the case when no match is found.
Note that it is coerced to \code{integer}.}

\item{incomparables}{A \code{\linkS4class{UUID}} or a \code{UUIDList} containing values that
should be excluded from comparison, or the logical value \code{FALSE},
meaning that all values can be compared.}

\item{\dots}{Additional arguments, for use in specific methods.}
}
\value{
If there is a match, an integer vector of the same length as \code{x} giving
the position in \code{table} of the first match; otherwise, \code{nomatch}.
}
\description{
These methods return a vector of the positions of (first) matches of a
\code{\linkS4class{UUID}} or \code{\linkS4class{UUIDList}} within a
\code{\linkS4class{UUIDList}}.
}
\seealso{
These methods enable use of the \code{\linkS4class{Vector}} methods for
\code{\link{selfmatch}}, \code{\link{unique}},
\code{\link{\%in\%}}, \code{\link{findMatches}}, and
\code{\link{countMatches}} (see Note in \code{\link{pcompare}}).
}
\author{
Adam C. Gower \email{agower@bu.edu}
}
