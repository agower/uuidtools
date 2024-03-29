% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/classes.R
\docType{class}
\name{UUIDList-class}
\alias{UUIDList-class}
\alias{UUIDList}
\title{Class to contain a list of Universally Unique Identifiers (UUIDs)}
\usage{
UUIDList(...)
}
\arguments{
\item{\dots}{Either a set of arguments of class \code{\linkS4class{UUID}}, or a single
list of \code{\linkS4class{UUID}} objects.}
}
\description{
This S4 class is a \code{\linkS4class{SimpleList}} of
\code{\linkS4class{UUID}} objects.
}
\section{Slots}{

\describe{
\item{\code{listData}}{A list of \code{\linkS4class{UUID}} objects.  Defaults to an empty list.}

\item{\code{elementType}}{Set to \code{"UUID"}.}
}}

\section{Extends}{

Directly extends class \code{\linkS4class{SimpleList}}.
}

\author{
Adam C. Gower \email{agower@bu.edu}
}
