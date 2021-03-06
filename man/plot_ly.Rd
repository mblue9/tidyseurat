% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotly_methods.R
\name{plot_ly}
\alias{plot_ly}
\title{Initiate a plotly visualization}
\usage{
plot_ly(
  data = data.frame(),
  ...,
  type = NULL,
  name = NULL,
  color = NULL,
  colors = NULL,
  alpha = NULL,
  stroke = NULL,
  strokes = NULL,
  alpha_stroke = 1,
  size = NULL,
  sizes = c(10, 100),
  span = NULL,
  spans = c(1, 20),
  symbol = NULL,
  symbols = NULL,
  linetype = NULL,
  linetypes = NULL,
  split = NULL,
  frame = NULL,
  width = NULL,
  height = NULL,
  source = "A"
)
}
\arguments{
\item{data}{A data frame (optional) or [crosstalk::SharedData] object.}

\item{...}{Arguments (i.e., attributes) passed along to the trace `type`.
See [schema()] for a list of acceptable attributes for a given trace `type`
(by going to `traces` -> `type` -> `attributes`). Note that attributes
provided at this level may override other arguments 
(e.g. `plot_ly(x = 1:10, y = 1:10, color = I("red"), marker = list(color = "blue"))`).}

\item{type}{A character string specifying the trace type (e.g. `"scatter"`, `"bar"`, `"box"`, etc).
If specified, it *always* creates a trace, otherwise}

\item{name}{Values mapped to the trace's name attribute. Since a trace can 
only have one name, this argument acts very much like `split` in that it 
creates one trace for every unique value.}

\item{color}{Values mapped to relevant 'fill-color' attribute(s) 
(e.g. [fillcolor](https://plot.ly/r/reference#scatter-fillcolor), 
[marker.color](https://plot.ly/r/reference#scatter-marker-color), 
[textfont.color](https://plot.ly/r/reference/#scatter-textfont-color), etc.).
The mapping from data values to color codes may be controlled using
`colors` and `alpha`, or avoided altogether via [I()] (e.g., `color = I("red")`). 
Any color understood by [grDevices::col2rgb()] may be used in this way.}

\item{colors}{Either a colorbrewer2.org palette name (e.g. "YlOrRd" or "Blues"), 
or a vector of colors to interpolate in hexadecimal "#RRGGBB" format, 
or a color interpolation function like `colorRamp()`.}

\item{alpha}{A number between 0 and 1 specifying the alpha channel applied to `color`.
Defaults to 0.5 when mapping to [fillcolor](https://plot.ly/r/reference#scatter-fillcolor) and 1 otherwise.}

\item{stroke}{Similar to `color`, but values are mapped to relevant 'stroke-color' attribute(s)
(e.g., [marker.line.color](https://plot.ly/r/reference#scatter-marker-line-color)
 and [line.color](https://plot.ly/r/reference#scatter-line-color)
for filled polygons). If not specified, `stroke` inherits from `color`.}

\item{strokes}{Similar to `colors`, but controls the `stroke` mapping.}

\item{alpha_stroke}{Similar to `alpha`, but applied to `stroke`.}

\item{size}{(Numeric) values mapped to relevant 'fill-size' attribute(s) 
(e.g., [marker.size](https://plot.ly/r/reference#scatter-marker-size), 
[textfont.size](https://plot.ly/r/reference#scatter-textfont-size),
and [error_x.width](https://plot.ly/r/reference#scatter-error_x-width)).
The mapping from data values to symbols may be controlled using
`sizes`, or avoided altogether via [I()] (e.g., `size = I(30)`).}

\item{sizes}{A numeric vector of length 2 used to scale `size` to pixels.}

\item{span}{(Numeric) values mapped to relevant 'stroke-size' attribute(s) 
(e.g., 
[marker.line.width](https://plot.ly/r/reference#scatter-marker-line-width),
[line.width](https://plot.ly/r/reference#scatter-line-width) for filled polygons,
and [error_x.thickness](https://plot.ly/r/reference#scatter-error_x-thickness))
The mapping from data values to symbols may be controlled using
`spans`, or avoided altogether via [I()] (e.g., `span = I(30)`).}

\item{spans}{A numeric vector of length 2 used to scale `span` to pixels.}

\item{symbol}{(Discrete) values mapped to [marker.symbol](https://plot.ly/r/reference#scatter-marker-symbol).
The mapping from data values to symbols may be controlled using
`symbols`, or avoided altogether via [I()] (e.g., `symbol = I("pentagon")`). 
Any [pch] value or [symbol name](https://plot.ly/r/reference#scatter-marker-symbol) may be used in this way.}

\item{symbols}{A character vector of [pch] values or [symbol names](https://plot.ly/r/reference#scatter-marker-symbol).}

\item{linetype}{(Discrete) values mapped to [line.dash](https://plot.ly/r/reference#scatter-line-dash).
The mapping from data values to symbols may be controlled using
`linetypes`, or avoided altogether via [I()] (e.g., `linetype = I("dash")`). 
Any `lty` (see [par]) value or [dash name](https://plot.ly/r/reference#scatter-line-dash) may be used in this way.}

\item{linetypes}{A character vector of `lty` values or [dash names](https://plot.ly/r/reference#scatter-line-dash)}

\item{split}{(Discrete) values used to create multiple traces (one trace per value).}

\item{frame}{(Discrete) values used to create animation frames.}

\item{width}{Width in pixels (optional, defaults to automatic sizing).}

\item{height}{Height in pixels (optional, defaults to automatic sizing).}

\item{source}{a character string of length 1. Match the value of this string 
with the source argument in [event_data()] to retrieve the 
event data corresponding to a specific plot (shiny apps can have multiple plots).}
}
\value{
A plotly
}
\description{
This function maps R objects to [plotly.js](https://plot.ly/javascript/),
an (MIT licensed) web-based interactive charting library. It provides 
abstractions for doing common things (e.g. mapping data values to 
fill colors (via `color`) or creating [animation]s (via `frame`)) and sets
some different defaults to make the interface feel more 'R-like' 
(i.e., closer to [plot()] and [ggplot2::qplot()]).
}
\details{
Unless `type` is specified, this function just initiates a plotly 
object with 'global' attributes that are passed onto downstream uses of
[add_trace()] (or similar). A [formula] must always be used when 
referencing column name(s) in `data` (e.g. `plot_ly(mtcars, x = ~wt)`).
Formulas are optional when supplying values directly, but they do
help inform default axis/scale titles
(e.g., `plot_ly(x = mtcars$wt)` vs `plot_ly(x = ~mtcars$wt)`)
}
\examples{
\donttest{

pbmc_small \%>\% 
   tidy \%>\% 
   plot_ly(x=~nCount_RNA, y=~nFeature_RNA)

}

}
\references{
<https://plotly-r.com/overview.html>
}
\seealso{
\itemize{
 \item For initializing a plotly-geo object: [plot_geo()]
 \item For initializing a plotly-mapbox object: [plot_mapbox()]
 \item For translating a ggplot2 object to a plotly object: [ggplotly()]
 \item For modifying any plotly object: [layout()], [add_trace()], [style()]
 \item For linked brushing: [highlight()]
 \item For arranging multiple plots: [subplot()], [crosstalk::bscols()]
 \item For inspecting plotly objects: [plotly_json()]
 \item For quick, accurate, and searchable plotly.js reference: [schema()]
}
}
\author{
Carson Sievert
}
