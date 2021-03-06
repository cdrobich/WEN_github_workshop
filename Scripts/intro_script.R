#### Packages ####
# Packages ----------------------------------------------------------------

install.packages('remotes') # for installing packages not on CRAN
library(remotes) # load  the package

install_github("allisonhorst/palmerpenguins")
library(palmerpenguins)

install.packages("tidyverse")
library(tidyverse)


# Session Info ------------------------------------------------------------

sessionInfo()

#R version 4.1.2 (2021-11-01)
#Platform: x86_64-w64-mingw32/x64 (64-bit)
#Running under: Windows 10 x64 (build 22000)

#Matrix products: default

#locale:
#[1] LC_COLLATE=English_Canada.1252  LC_CTYPE=English_Canada.1252   
#[3] LC_MONETARY=English_Canada.1252 LC_NUMERIC=C                   
#[5] LC_TIME=English_Canada.1252    
#system code page: 65001

#attached base packages:
#  [1] stats     graphics  grDevices utils     datasets  methods   base     

#other attached packages:
#  [1] forcats_0.5.1        stringr_1.4.0        dplyr_1.0.8         
#[4] purrr_0.3.4          readr_2.1.2          tidyr_1.2.0         
#[7] tibble_3.1.6         ggplot2_3.3.5        tidyverse_1.3.1     
#[10] palmerpenguins_0.1.0 remotes_2.4.2       

#loaded via a namespace (and not attached):
#  [1] Rcpp_1.0.8       cellranger_1.1.0 pillar_1.7.0     compiler_4.1.2  
#[5] dbplyr_2.1.1     tools_4.1.2      lubridate_1.8.0  jsonlite_1.7.3  
#[9] lifecycle_1.0.1  gtable_0.3.0     pkgconfig_2.0.3  rlang_1.0.1     
#[13] reprex_2.0.1     rstudioapi_0.13  cli_3.2.0        DBI_1.1.2       
#[17] curl_4.3.2       haven_2.4.3      xml2_1.3.3       withr_2.4.3     
#[21] httr_1.4.2       fs_1.5.2         generics_0.1.2   vctrs_0.3.8     
#[25] hms_1.1.1        grid_4.1.2       tidyselect_1.1.1 glue_1.6.1      
#[29] R6_2.5.1         fansi_1.0.2      readxl_1.3.1     tzdb_0.2.0      
#[33] modelr_0.1.8     magrittr_2.0.2   backports_1.4.1  scales_1.1.1    
#[37] ellipsis_0.3.2   rvest_1.0.2      assertthat_0.2.1 colorspace_2.0-2
#[41] utf8_1.2.2       stringi_1.7.6    munsell_0.5.0    broom_0.7.12    
#[45] crayon_1.5.0


# Load data ---------------------------------------------------------------

data(penguins, package = "palmerpenguins")

write.csv(penguins_raw, "Data/penguins_raw.csv")
write.csv(penguins, "Data/penguins.csv", row.names = FALSE)

pen.data <- read.csv("Data/penguins.csv")


# Data inspection ---------------------------------------------------------

str(pen.data)
colnames(pen.data)

head(pen.data)
tail(pen.data)

# pairwise correlation plot of numeric columns
pairs(pen.data[,c(3:6,8)])
?pairs

boxplot(pen.data$body_mass_g ~ pen.data$species)

# GGplot figure -----------------------------------------------------------



