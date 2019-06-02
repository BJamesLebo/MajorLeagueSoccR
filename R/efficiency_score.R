#function that returns the team's Efficiency Score
#a metric based off of Points Per Game divided by Shot % taken by the team in a
#game on average

efficiency_score <- function(team) {

  team_var <- MLS_shot[ which(MLS_shot$Team==team), ]
  team_var2 <- MLS_shot[ which(MLS_shot$Opponent==team), ]
  SF <- sum(team_var$Shots)
  SA <- sum(team_var2$Shots)
  FinalPct <- (SF/(SF+SA))*100

  team_var3 <- MLS_shot[ which(MLS_shot$Team==team), ]
  PTS <- sum(team_var3$WDL)
  GP <- nrow(team_var3)
  PPG <- PTS/GP

  eff <- round((PPG/FinalPct)*1000,1)
  return(eff)

}
