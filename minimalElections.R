


Data = read.csv(file.choose(), header = T)
Data$Votes = gsub(',', '', Data$Votes)
Data$Votes = as.numeric(Data$Votes)
library(adagio)
Data$minVotes = floor(Data$Votes/2 + 1)
Most <- knapsack(Data$ECVotes, Data$minVotes, 268)
