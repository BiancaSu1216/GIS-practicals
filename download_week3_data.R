# CASA0005 第 3 周数据下载脚本
# 用法：在 RStudio 里打开本文件，点右上角 Source 按钮（.R 脚本可以用 Source）
# 文件会下载到项目里的 prac3_data/ 文件夹，总共约 300 MB，请耐心等待

options(timeout = 1800)   # 大文件下载，最多等 30 分钟
dir.create("prac3_data", showWarnings = FALSE)

# 1. 澳大利亚边界（GADM，GeoPackage，约 85 MB）
download.file("https://geodata.ucdavis.edu/gadm/gadm4.1/gpkg/gadm41_AUS.gpkg",
              destfile = "prac3_data/gadm41_AUS.gpkg", mode = "wb")

# 2. WorldClim 历史平均气温 tavg，5 分辨率（约 120 MB zip），下载后解压
download.file("https://geodata.ucdavis.edu/climate/worldclim/2_1/base/wc2.1_5m_tavg.zip",
              destfile = "prac3_data/wc2.1_5m_tavg.zip", mode = "wb")
unzip("prac3_data/wc2.1_5m_tavg.zip", exdir = "prac3_data")

# 检查：应该看到 gadm41_AUS.gpkg 和 wc2.1_5m_tavg_01.tif ... _12.tif
list.files("prac3_data")
