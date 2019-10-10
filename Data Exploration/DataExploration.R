setwd("C:/Users/Pratheeba/UNO/DatatoDecisions/Data Exploration Assignment")
dataexp <- read.csv("site_phenometrics_data.csv",stringsAsFactors = FALSE)
library(ggplot2)
library(dplyr)
dataexp$Mean_First_Yes_Year <- as.factor(dataexp$Mean_First_Yes_Year)
dataexp %>% filter(Median_First_Yes_DOY!=-9999) %>% ggplot(aes(x=Mean_First_Yes_DOY, y=Phenophase_Category)) +
geom_point()
dataexp %>% filter(Median_First_Yes_DOY!=-9999) %>% ggplot(aes(x=Mean_First_Yes_DOY, y=Species, color = Kingdom)) +
geom_point()
dataexp %>% filter(Mean_First_Yes_DOY!=-9999) %>% ggplot(aes(x=Mean_First_Yes_DOY, y=Genus)) +
geom_point() +
facet_grid(~Site_Name)
dataexp %>% filter(dataexp$Mean_First_Yes_Year != -9999) %>% ggplot(aes(x = Site_Name, fill = Mean_First_Yes_Year)) +
geom_bar(stat = "count", position = position_dodge()) +
geom_text(stat="count", aes(label=..count..), vjust = 1.6, color="white", size=3, position = position_dodge(1))
ggplot(data = dataexp) +
geom_point(mapping = aes(x=Phenophase_Category, y=Species,color = Kingdom))
dataexp$Phenophase_ID <- as.factor(dataexp$Phenophase_ID)
daily_counts <- dataexp %>% filter(dataexp$Mean_First_Yes_DOY != -9999) %>% group_by(Mean_First_Yes_DOY, Phenophase_ID) %>% summarise(count = n())
ggplot(daily_counts, aes(x = Mean_First_Yes_DOY, y = count)) +
geom_point()+
geom_smooth()