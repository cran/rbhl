% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bhl_bioherlib.R
\name{bhl_bioherlib}
\alias{bhl_bioherlib}
\title{Search BHL across many API methods.}
\usage{
bhl_bioherlib(
  method = "GetPageMetadata",
  pageid = NULL,
  ocr = FALSE,
  names = FALSE,
  as = "table",
  key = NULL,
  ...
)
}
\arguments{
\item{method}{The API method to use.}

\item{pageid}{The identifier of an individual page in a scanned book.}

\item{ocr}{return ocr text of the page (logical). Default: \code{FALSE}}

\item{names}{return the names that appear on the page (logical).
Default: \code{FALSE}}

\item{as}{(character) Return a list ("list"), json ("json"), xml ("xml"),
or parsed table ("table", default). Note that \code{as="table"} can give
different data format back depending on the function - for example,
sometimes a data.frame and sometimes a character vector.}

\item{key}{Your BHL API key, either enter, or loads from your \code{.Renviron}
as \code{BHL_KEY}
or from \code{.Rprofile} as \code{bhl_key}.}

\item{...}{Curl options passed on to \code{\link[crul:HttpClient]{crul::HttpClient()}}}
}
\description{
Search BHL across many API methods.
}
\examples{
\dontrun{
bhl_bioherlib(method='GetPageMetadata', pageid=1328690, ocr=TRUE,
  names=TRUE)
bhl_bioherlib(method='GetPageMetadata', pageid=1328690, ocr=TRUE,
  names=TRUE, as="xml")
bhl_bioherlib(method='GetPageMetadata', pageid=1328690, ocr=TRUE,
  names=TRUE, as="list")
}
}
