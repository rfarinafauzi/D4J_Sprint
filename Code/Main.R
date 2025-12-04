install.packages("ggplot2")
install.packages("dplyr")
install.packages("readxl")

library(ggplot2)
library(dplyr)
library(readxl)

my_data <- read_excel("Data/Olympics 100m Winning Times.xlsx")

ggplot(my_data, aes(x=`Olympic year`)) + 
  geom_point(aes(y=`Time_M`, colour = "darkred")) + 
  geom_point(aes(y=`Time_W`, colour = "blue")) + 
  labs(x="Olympic Year", y="Winning Times", title="Olympics Winning Time (100m Event)") + 
  scale_color_identity(name='', breaks=c('darkred', 'blue'), labels=c("Men", "Women"), guide='legend')

