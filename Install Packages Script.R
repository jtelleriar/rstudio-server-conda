
###########################################################################################
###########################################################################################
# Install RStudio Server Cloud:
###########################################################################################
###########################################################################################

# DESCRIPTION:
# "Install Packages from Scripts"
#

direct <- "/mnt/tmp"                                # <- directory folder
LibDir <- paste0("/mnt/anaconda3/envs/demand_forecast/lib/R/library")                           # <- Libr Dir                              
setwd(direct)
if (file.exists(LibDir)!=TRUE){
  dir.create(file.path(LibDir))
}
.libPaths(LibDir)
repos_url="http://cran.rstudio.com/"
pkg <- c("dplyr")
InstallLoadPackages <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[,"Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg, repos=repos_url,dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
  print(" Packages were installed and loaded!")
}
InstallLoadPackages(pkg)