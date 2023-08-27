#Projecto Cyclistic

#Install & charge the packages we need
install.packages("reshape2")
install.packages("plyr")
library(reshape2)
library(tidyverse)
library(lubridate)
library(ggplot2)
library("plyr")
library("dplyr")


#Import the 12 csv files from Cyclistic each month of the year activity
cyclistic_202201_tripdata <- read.csv("202201-divvy-tripdata.csv")
cyclistic_202202_tripdata <- read.csv("202202-divvy-tripdata.csv")
cyclistic_202203_tripdata <- read.csv("202203-divvy-tripdata.csv")
cyclistic_202204_tripdata <- read.csv("202204-divvy-tripdata.csv")
cyclistic_202205_tripdata <- read.csv("202205-divvy-tripdata.csv")
cyclistic_202206_tripdata <- read.csv("202206-divvy-tripdata.csv")
cyclistic_202207_tripdata <- read.csv("202207-divvy-tripdata.csv")
cyclistic_202208_tripdata <- read.csv("202208-divvy-tripdata.csv")
cyclistic_202209_tripdata <- read.csv("202209-divvy-publictripdata.csv")
cyclistic_202210_tripdata <- read.csv("202210-divvy-tripdata.csv")
cyclistic_202211_tripdata <- read.csv("202211-divvy-tripdata.csv")
cyclistic_202212_tripdata <- read.csv("202212-divvy-tripdata.csv")

#Combine the 12 Cyclistic files into one
cyclistic_2022_all <- rbind(cyclistic_202201_tripdata,cyclistic_202202_tripdata,cyclistic_202203_tripdata,cyclistic_202204_tripdata,cyclistic_202205_tripdata,cyclistic_202206_tripdata,cyclistic_202207_tripdata,cyclistic_202208_tripdata,cyclistic_202209_tripdata,cyclistic_202210_tripdata,cyclistic_202211_tripdata,cyclistic_202212_tripdata)
View(cyclistic_2022_all)


#Create the Data Visualizations

#Casual VS Members (percentage)
ggplot(cyclistic_2022_all, aes(x=member_casual,
                               y=..count../sum(..count..)))+
  geom_bar(fill="aquamarine",
           color="black")+
  labs(x="type of rider",
       y="percent",
       title="percentage of casual and member riders")+
  scale_y_continuous(labels = scales::percent)

#2_Rides by month
ggplot(cyclistic_2022_all, aes(x=ride_month))+
  geom_bar(fill="chartreuse",
           color="black")+
  labs(x= "Month",
       y= "Rides",
       title= "Number of Rides by Month")

#3_Number of Member & Casual riders by day of the week
ggplot(cyclistic_2022_all) +
  geom_bar(aes(x = day_of_the_week, fill = member_casual), position = 'dodge') +
  
  ggtitle("Type of Members by day of the week") +
  xlab("Day of the Week") +
  ylab("Number of Riders") +
  theme_bw() +
  theme(axis.text.x = element_text(face = 'bold', size = 10),
        axis.text.y = element_text(face = 'bold', size = 10))+
  
#4_User Preference by type of rider
ggplot(data = cyclistic_2022_all) + geom_bar(mapping = aes(x=rideable_type, fill=member_casual))+
  labs(title= "Preference bycicle by type of rider",
       x="type of rider",
       y="")

#Extra Stuff
str(cyclistic_2022_all)

cyclistic_ride_month <- as.character(cyclistic_2022_all$ride_month)
view(cyclistic_ride_month)

as.character()

"df$col1"

cyclistic_202201_tripdata_new <- read.csv("202201-divvy-tripdata.csv")
cyclistic_202201_tripdata_2 <- read.csv("2022-divvy-tripdata.csv")

install.packages("plyr")
library("plyr")
library("dplyr")

?rbind
colnames(cyclistic_2022_all)

cyclistic_trial <- rbind(cyclistic_202201_tripdata,cyclistic_202202_tripdata,cyclistic_202203_tripdata)

cyclistic_2022_all <- rbind(cyclistic_202201_tripdata,cyclistic_202202_tripdata,cyclistic_202203_tripdata,cyclistic_202204_tripdata,cyclistic_202205_tripdata,cyclistic_202206_tripdata,cyclistic_202207_tripdata,cyclistic_202208_tripdata,cyclistic_202209_tripdata,cyclistic_202210_tripdata,cyclistic_202211_tripdata,cyclistic_202212_tripdata)
View(cyclistic_2022_all)



ggsave
  
?ggplot
?names.arg

(1=Sunday, 2=Monday, 3=Tuesday, 4=Wednesday, 5=Thursday, 6=Friday, 7=Saturday)

is.na(cyclistic_2022_all)
colSums(is.na(cyclistic_2022_all))
which(colSums(is.na(cyclistic_2022_all))>0)
names(which(colSums(is.na(cyclistic_2022_all))>0))
  
glimpse(cyclistic_2022_all)
