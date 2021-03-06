% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deprecated.R
\name{sp_aggregate}
\alias{sp_aggregate}
\title{Aggregate SpatialPolygonsDataFrame to new geometry.}
\usage{
sp_aggregate(
  zones,
  aggzones,
  cols = FALSE,
  FUN = sum,
  prop_by_area = ifelse(identical(FUN, mean) == FALSE, TRUE, FALSE),
  digits = getOption("digits")
)
}
\arguments{
\item{zones}{A spatial object representing origins (and destinations
if no separate destinations object is provided) of travel.}

\item{aggzones}{A SpatialPolygonsDataFrame containing the new
boundaries to aggregate to.}

\item{cols}{A character vector containing the names of columns on which to
apply FUN. By default, all numeric columns are aggregated.}

\item{FUN}{Function to use on aggregation. Default is sum.}

\item{prop_by_area}{Boolean value indicating if the values should be
proportionally adjusted based on area. Default is TRUE unless FUN = mean.}

\item{digits}{The number of digits to use when proportionally adjusting
values based on area. Default is the value of getOption("digits").}
}
\value{
SpatialPolygonsDataFrame
}
\description{
Aggregate SpatialPolygonsDataFrame to new geometry.
}
\section{Details}{

This function performs aggregation on a SpatialPolygonsDataFrame to a
different geometry specified by another SpatialPolygons object.
}

\examples{
\dontrun{
zones@data$region <- 1
zones@data[c(2, 5), c("region")] <- 2
aggzones <- sp::SpatialPolygonsDataFrame(rgeos::gUnaryUnion(
  zones,
  id = zones@data$region
), data.frame(region = c(1, 2)))
zones@data$region <- NULL
zones@data$exdata <- 5
library(sp)
sp_aggregate(zones, aggzones)
}
}
\seealso{
Other od: 
\code{\link{dist_google}()},
\code{\link{od2line}()},
\code{\link{od2odf}()},
\code{\link{od_aggregate_from}()},
\code{\link{od_aggregate_to}()},
\code{\link{od_aggregate}()},
\code{\link{od_coords2line}()},
\code{\link{od_coords}()},
\code{\link{od_dist}()},
\code{\link{od_id}},
\code{\link{od_oneway}()},
\code{\link{od_radiation}()},
\code{\link{od_to_odmatrix}()},
\code{\link{odmatrix_to_od}()},
\code{\link{points2flow}()},
\code{\link{points2odf}()}
}
\concept{od}
