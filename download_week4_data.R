# CASA0005 week 4 homework data (Gender Inequality Index)
# How to use: in the Console run  source("download_week4_data.R")
options(timeout = 600)
dir.create("prac4_data", showWarnings = FALSE)

# 1. UNDP Human Development Report composite indices, 1990-2023 (has gii_2010, gii_2019)
download.file("https://hdr.undp.org/sites/default/files/2025_HDR/HDR25_Composite_indices_complete_time_series.csv",
              destfile = "prac4_data/HDR25_Composite_indices_complete_time_series.csv", mode = "wb")

# 2. World country boundaries (Esri World Countries Generalized), GeoJSON
download.file("https://services.arcgis.com/P3ePLMYs2RVChkJx/ArcGIS/rest/services/World_Countries_(Generalized)/FeatureServer/0/query?where=1%3D1&outFields=*&f=geojson",
              destfile = "prac4_data/World_Countries_Generalized.geojson", mode = "wb")

list.files("prac4_data")
