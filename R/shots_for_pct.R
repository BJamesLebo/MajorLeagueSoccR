#Returns the Shots For Percentage
##This is the average % of shots taken by both teams in a game that the subject
##team is responsible for

shots_for_pct <- function(team) {
  team_var <- MLS_shot[ which(MLS_shot$Team==team), ]
  team_var2 <- MLS_shot[ which(MLS_shot$Opponent==team), ]
  SF <- sum(team_var$Shots)
  SA <- sum(team_var2$Shots)
  FinalPct <- round((SF/(SF+SA))*100,2)
  return(FinalPct)
}
