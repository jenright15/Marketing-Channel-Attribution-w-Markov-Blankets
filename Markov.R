if(!require(ChannelAttribution)){
  install.packages("ChannelAttribution")
  library(ChannelAttribution)
}


setwd("C:/Users/johne/Desktop/Python Projects/Markov Marketing")

df <- read.csv('Paths.csv')

#Only need 1 -2
df <- df[c(1,2)]

dt <- df[c(1:1000), c(1:2)]
M <- markov_model(dt, 'Path', var_value = 'Conversion', var_conv = 'Conversion', sep = '>', order=1, out_more = TRUE)

write.csv(M$result, file = "Markov - Output - Conversion values.csv", row.names=FALSE)

write.csv(M$transition_matrix, file = "Markov - Output - Transition matrix.csv", row.names=FALSE)
