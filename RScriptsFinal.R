#----------Rafael Code----------
library(readr)
library(RColorBrewer)
library(ggplot2)
coul <- brewer.pal(5,"Set2")

dfOffAge <- read_csv("Rdata/Offender-Age2_21_2022.csv")
barplot(dfOffAge$value,names.arg = dfOffAge$key,cex.names=0.6,
        col=coul,main = "Offender Age",xlab = "Age Range",ylab = "# of Cases")

p <- ggplot(data = dfOffAge, aes(x=reorder(key,-value) ,y=value, fill = key))+
  geom_bar(stat = "identity" )+
  theme(axis.text = element_text(angle = 45,size = 14))+
  ggtitle("Offender Age")
p

#-----Plot 2-----
dfVicAge <- read_csv("Rdata/Victim-Age2_21_2022.csv")
label <- dfVicAge$key

ggplot(dfVicAge,aes(x="",y=dfVicAge$value,fill=label))+
  geom_bar(stat = "identity",color = "white")+
  coord_polar("y",start = 0)+
  theme_void()+
  ggtitle("Victim Ages")
#----------Jack Code----------
install.packages("tidyverse")
library(ggplot2)
library(dplyr)
library(RColorBrewer)

dfMichigan <- read.csv('/Users/jackvalentine/Desktop/School/2022 - 2nd Semester/CSC 302 - Data Visualization/1Rate-of-Violent-Crime-Offenses-by-Population2_21_2022.csv')
View(dfMichigan)

ggplot(dfMichigan, aes(x=Year, y=Michigan) ) +
  geom_bar(color= 'black', fill = "#DD8888", stat = "identity")

library(ggplot2)
library(dplyr)
library(tidyr)

dfLocation <- read.csv('/Users/jackvalentine/Desktop/School/2022 - 2nd Semester/CSC 302 - Data Visualization/Location-Type4_14_2022_edit.csv')
View(dfLocation)

ggplot(dfLocation, aes(x= reorder(Locations, -Value), y=Value) ) +
  geom_bar(color= 'black', fill = "#DD8888", stat = "identity")+
  ggtitle("Location Types for Violent Crimes in the US (2020)") + xlab('Locations') +ylab('Number of Violent Crimes in 2020')
#----------Skylar Code----------

dfweps =data.frame(Weps=df$i..key, value = df$value)
head(dfweps)
dfweps$Value[dfweps$Value == 0] <- NA
ggploot(data=dfweps, aes(x=reorder(weps,-value), y=value, size= value))+
  geom_point(alpha = 1)+
  ylim(0,150000)+
  theme(axis.text.x = element_text(
    size=12, angle=90, color="red"))+
  xlab("Weapons")+
  theme(legend.position = "none")
  
ggplot(data= df1, aes(x=year, y= total_arrests))+
  geom_area(fill="darkorange1",alpha=.4)+
  geom_line(color="lightsalmon1",size = 2)+
  geom_ponint(size = 5, color = "lightalmon1")+
  ylab("total Arrests in the Millions")+
  coord_cartesian(ylim = c(10,16))



