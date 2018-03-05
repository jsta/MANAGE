download.file("https://www.ars.usda.gov/ARSUserFiles/30980500/manage2016.zip", "MANAGE.zip")
unzip("MANAGE.zip")

dt <- Hmisc::mdb.get("managev4ag+forest+yield+drain4-1-16.accdb")
saveRDS(dt, "manage.rds")
