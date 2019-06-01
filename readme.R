library(readxl)
#Place the Excel file in the project's data folder
#Import it the way you normally do in R
#Once this is done you can run the below save() command
#Saving the Excel files I've dropped into the Package folder
#as RData files.
save(Franchise, file="Franchise.RData")
save(MLS_shot, file="2019MLS.RData")

#test function, returns row based on Team short name
team_info <- function(x){
  Franchise[which(Franchise$ShortName == x),]
}

load_all()
