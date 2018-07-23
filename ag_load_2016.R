library(dplyr)
library(tidyr)

dt <- readRDS("manage.rds")
dt <- dt$`ag load Apr 2016`

names(dt) <- c("record_id", "watershed_id",
               "city_state", "state",
               "coordinates", "date",
               "watershed_years", "land_use",
               "tillage")

# remove junk names
dt_names <- names(dt)
bad_col_names <- c("state")
dt_names <- dt_names[!dt_names %in% bad_col_names]
names(dt) <- dt_names
names(dt) <- make.names(names(dt))

# take long. through ncol and shift values (not names one to the right)
# find long. through ncol
dt$junk <- NA
long_ncol_index <- which(names(dt) == "long."):(ncol(dt) - 1)
names(dt)[long_ncol_index]
names(dt[,long_ncol_index]) <- names(dt[,long_ncol_index + 1])
# find long. through ncol + 1
# move

# split bad columns



dt[(which(dt_names == "long."):(ncol(dt) - 1)) + 1] <- dt[which(dt_names == "long."):(ncol(dt) - 1)]
dt_names <- names(dt)
names(dt)[which(names(dt) == "long.") + 1:ncol(dt)]
, "b")

which(dt_names == "long.")
# dt$location..lat <- stringi::stri_replace_all_regex(dt$location..lat, '[^[:alnum:],]+', '')
# dt$location..lat[nchar(dt$location..lat) == 0] <- NA

# head(dt$location..lat, n = 20)
dt <- tidyr::separate(dt, location..lat, into = c("lat", "long."), sep = ";")


