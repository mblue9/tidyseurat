% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidyr_methods.R
\name{unnest}
\alias{unnest}
\alias{unnest.default}
\alias{unnest.tidyseurat_nested}
\alias{nest}
\alias{nest.default}
\alias{nest.tidyseurat}
\title{unnest}
\usage{
unnest(
  .data,
  cols,
  ...,
  keep_empty = FALSE,
  ptype = NULL,
  names_sep = NULL,
  names_repair = "check_unique"
)

\method{unnest}{default}(
  .data,
  cols,
  ...,
  keep_empty = FALSE,
  ptype = NULL,
  names_sep = NULL,
  names_repair = "check_unique"
)

\method{unnest}{tidyseurat_nested}(
  .data,
  cols,
  ...,
  keep_empty = FALSE,
  ptype = NULL,
  names_sep = NULL,
  names_repair = "check_unique"
)

nest(.data, ...)

\method{nest}{default}(.data, ...)

\method{nest}{tidyseurat}(.data, ...)
}
\arguments{
\item{.data}{A tbl. (See tidyr)}

\item{cols}{<[`tidy-select`][tidyr_tidy_select]> Columns to unnest.
If you `unnest()` multiple columns, parallel entries must be of
compatible sizes, i.e. they're either equal or length 1 (following the
standard tidyverse recycling rules).}

\item{...}{Name-variable pairs of the form new_col = c(col1, col2, col3) (See tidyr)}

\item{keep_empty}{See tidyr::unnest}

\item{ptype}{See tidyr::unnest}

\item{names_sep}{If `NULL`, the default, the names will be left
  as is. In `nest()`, inner names will come from the former outer names;
  in `unnest()`, the new outer names will come from the inner names.

  If a string, the inner and outer names will be used together. In `nest()`,
  the names of the new outer columns will be formed by pasting together the
  outer and the inner column names, separated by `names_sep`. In `unnest()`,
  the new inner names will have the outer names (+ `names_sep`) automatically
  stripped. This makes `names_sep` roughly symmetric between nesting and unnesting.}

\item{names_repair}{See tidyr::unnest}
}
\value{
A tidyseurat objector a tibble depending on input

A tidyseurat objector a tibble depending on input
}
\description{
unnest

nest
}
\examples{

library(dplyr)
pbmc_small \%>\% tidy \%>\% nest(data = -groups) \%>\% unnest(data) 



library(dplyr)
pbmc_small \%>\% tidy \%>\% nest(data = -groups) \%>\% unnest(data) 

}
