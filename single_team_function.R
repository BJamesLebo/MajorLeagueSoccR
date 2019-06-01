#Function returns a subset of the data for only one team that user selects

single_team <- function(team) {
  team_var <- MLS_shot[ which(MLS_shot$Team==team), ]
  return(team_var)
}

