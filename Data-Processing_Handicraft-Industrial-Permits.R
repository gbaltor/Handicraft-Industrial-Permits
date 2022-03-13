# Libraries ####
library(tidyverse)
install.packages("readxl")
library("readxl")

# Data Processing ####

# Extraction: Read Excel
handicraft_industrial_permits <- read_excel("C:\\RAP\\Creative_Industries\\Handicraft-Industrial-Permits\\data\\open\\Handicraft_Industrial_Permits.xlsx")

category <- unique(handicraft_industrial_permits$CATEGORY)

painting <- dplyr::select(.data = category,
                          contains("paint"))

painting <- dplyr::select(.data = handicraft_industrial_permits,
                          contains("paint"))

association <- unique(handicraft_industrial_permits$ASSOCIATION)

library("writexl")
write.csv(category, "C:\\RAP\\Creative_Industries\\Handicraft-Industrial-Permits\\data\\open\\category.csv")
