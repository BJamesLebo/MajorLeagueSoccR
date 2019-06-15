#A function that groups the individual player shot data into clusters
#User can pick the number of clusters
#returns a data table with group appended to columns
#Useful in identifying similar players across the league

library(DT)
library(dplyr)

k_means <- function(x) {

clusters <- kmeans(MLS_ShotsOnTgt_player[,3:14], x)

# Save the cluster number in the dataset
MLS_ShotsOnTgt_player$Group <- as.factor(clusters$cluster)

SOT_player <- MLS_ShotsOnTgt_player %>%
  arrange(Group)

return(datatable(SOT_player))

}
