MajorLeagueSoccR
========================================================

Version: 1.0  
Date: 2019-06-15

Authors:

* Ben Lebo

### Package Dependencies
library(DT)  
library(dplyr)  
library(readxl)  

### Setup
Place the Excel file in the project's data folder.    
Import it the way you normally do in R.  
Once this is done you can run the below save() command to save as RData files.  
```{r eval=FALSE}
save(Franchise, file="Franchise.RData")
save(MLS_shot, file="2019MLS.RData")
save(MLS_ShotsOnTgt_player, file="2019MLS_ShotsOnTgt.RData")
```
  

#### test function, returns row based on Team short name
```{r eval=FALSE}
team_info <- function(x){
  Franchise[which(Franchise$ShortName == x),]
}
```

## Tables
* Franchise
    + Information on individual teams such as colors, location, conference, etc.
* MLS_shot
    + Detailed info on a team level of shots on a game by game basis. 
* MLS_ShotsOnTgt_player
    + Which area of the net a shot on target hit, on a player level.  



## Functions
* efficiency_score
    + Returns the team's Efficiency Score
    + Metric based off Points Per Game divided by Shot % taken by the team in a game on average
* k_means
    + Groups the individual player shot data into clusters
* points_per_game
    + Returns average points per game a team achieves through the season
    + Cannot be lower than 0 or higher than 3
* shots_for_pct
    + Returns the Shots For Percentage
* single_team
    + Returns a subset of the data for only one team that user selects
