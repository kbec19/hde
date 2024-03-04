# Loading the database received from JHU

library(tidyverse)
hde_jhu <- read_csv("healthydemocracy_irs_model.csv")
View(hde_jhu)

# Examining the HDE database received from JHU

summary(hde_jhu)
glimpse(hde_jhu)

# We have a dataset with 1,774,177 rows, or organizations. 
# Aside from the basic columns (EIN, org name, city, state, zip), there are 
# data classifications specific to IRS data.
# Subsection: https://guidestar.candid.org/irs-subsection-codes/
# Classification: https://www.irs.gov/pub/irs-tege/p4838.pdf
# Foundation:
# PF Filing Req CD:
# NTEE_CD: https://urbaninstitute.github.io/nccs-legacy/ntee/ntee-history.html

# Loading the HDE working database

hde_master <- read_csv("masterlist_synced.csv")
View(hde_master)

# This has been updated in the file in this project with the hde_master.csv file
# but we did have to clean up from the AirTable export to remove the "-" from 
# the EIN to be able to match them with the format in the JHU database.

# Next, each of the datasets should be in the same dataframe format

df_hde_master <- data.frame(hde_master)
df_hde_jhu <- data.frame(hde_jhu)




