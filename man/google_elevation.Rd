% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/google_elevation.R
\name{google_elevation}
\alias{google_elevation}
\title{Google elevation}
\usage{
google_elevation(df_locations = NULL, polyline = NULL,
  location_type = c("individual", "path"), samples = NULL, key,
  simplify = TRUE)
}
\arguments{
\item{df_locations}{\code{data.frame} of with two columns called 'lat' and 'lon'
(or 'latitude' / 'longitude') used as the locations}

\item{polyline}{\code{string} encoded polyline}

\item{location_type}{\code{string} Specifies the results to be returned as individual
locations or as a path. One of 'individual' or 'path'. If 'path', the data.frame
\code{df_locations} must contain at least two rows. The order of the path is
determined by the order of the rows.}

\item{samples}{\code{integer} Required if \code{location_type == "path"}.
Specifies the number of sample points along a path for which to return elevation data.
The samples parameter divides the given path into an ordered set of equidistant
points along the path.}

\item{key}{\code{string} A valid Google Developers Elevation API key}

\item{simplify}{\code{logical} - TRUE indicates the returned JSON will be coerced into a list. FALSE indicates the returend JSON will be returned as a string}
}
\value{
Either list or JSON string of the elevation data
}
\description{
The Google Maps Elevation API provides elevation data for all locations on
the surface of the earth, including depth locations on the ocean floor
(which return negative values).
}
\details{
Locations can be specified as either a data.frame containing both a lat/latitude
and lon/longitude column, or
a single encoded polyline
}
\examples{
\dontrun{

## elevation data for the MCG in Melbourne
df <- data.frame(lat = -37.81659,
                 lon = 144.9841)

google_elevation(df_locations = df,
                 key = "<your valid api key>",
                 simplify = TRUE)



## elevation data from the MCG to the beach at Elwood (due south)
df <- data.frame(lat = c(-37.81659, -37.88950),
                 lon = c(144.9841, 144.9841))

df <- google_elevation(df_locations = df,
                       location_type = "path",
                       samples = 20,
                       key = "<your valid api key>",
                       simplify = TRUE)

## plot results
library(ggplot2)
df_plot <- data.frame(elevation = df$results$elevation,
                       location = as.integer(rownames(df$results)))

ggplot(data = df_plot, aes(x = location, y = elevation)) +
 geom_line()
}


}
