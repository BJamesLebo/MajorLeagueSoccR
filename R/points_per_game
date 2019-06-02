#function that returns average points per game a team achieves through the season
#cannot be lower than 0 or higher than 3

points_per_game <- function(team) {
  team_var <- MLS_shot[ which(MLS_shot$Team==team), ]
  PTS <- sum(team_var$WDL)
  GP <- nrow(team_var)
  PPG <- round(PTS/GP,2)
  return(PPG)
}
