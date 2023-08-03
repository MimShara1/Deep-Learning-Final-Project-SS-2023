library(landscapemetrics)
library(landscapetools)
library(raster)
library(rasterVis)
library(sf)
library(tmap)
library(dplyr)
library(tidyverse)
library(factoextra)

install.packages("factoextra")

getwd()
r1990 <- raster("Shanghai_footprint1990.tif")

r2015 <- raster("Shanghai_footprint1990.tif")


#Plot rasters with landscapemetrics utility function
r 1990 <- function(x, xlab = 'Easting',
         discrete = FALSE)


show_landscape(r1990, discrete = TRUE) 
show_landscape(r2015,discrete = TRUE)


#Plot 1990 raster with level plot
#Df with categories for legend
df <- data.frame(ID = c(1, 2, 3, 4),
                 class = c("Urban", "Suburban", "Open space", "Water")
#set the categories
levels(r1990) <- df
#Plot and add proper colors
levelplot(r1990, col.regions=c("grey","darkred", "darkgreen", "dodgerblue4"))