# Get the working directory to double check you are where you are supposed to be!
getwd()


# Install BiocManager
install.packages("BiocManager")

# Initiate renv to create a project specific library of your packages. 
# If you dont have the package renv then install with;

install.packages("renv")
renv::init()
renv::snapshot()

install.packages("remotes")
remotes::install_github("karthik/holepunch")

library(holepunch)
write_compendium_description(package = "Cytof_ILC008_compendium", 
                             description = "Your compendium description")

write_dockerfile(maintainer = "Rebecca_Payne")
