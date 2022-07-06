rm(list = ls())
all = read.csv(file = 'allMSN.csv', header = FALSE)
  
avedelay = round(tapply(all[,2], all[,1],mean, na.rm = TRUE),1)
names(avedelay) = c('Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa', 'Su')
write(x=avedelay, file = "delays.txt")

