days <- c('Mon', 'Tue', 'Wed', 'Thur', 'Fri', 'Sat', 'Sun') #Days
temp <- c(28, 50.5, 32, 31.2, 29.3, 27.9, 26.4)
snowed <- c('T','T','F','F','T','T','F')
snowed
help("data.frame")
RPI_Weather_Week <- data.frame(days, temp, snowed)
RPI_Weather_Week
head(RPI_Weather_Week)
str(RPI_Weather_Week)
summary(RPI_Weather_Week)

RPI_Weather_Week[1,] #First row and all collumns
RPI_Weather_Week[,1] #First column and all rows

RPI_Weather_Week[,"snowed"]
RPI_Weather_Week[,"days"]
RPI_Weather_Week[,"temp"]
RPI_Weather_Week[1:5, c("days", "temp")]
RPI_Weather_Week$temp
subset(RPI_Weather_Week, subset=snowed==TRUE)

sorted.snowed <- order(RPI_Weather_Week['snowed'])



EPI_2010_broken <- read.csv("~/Documents/DataAnalytics2022_Patrick_Fernandez/Lab1/2010EPI_data.csv")
EPI_2010 <- EPI_2010_broken
colnames(EPI_2010) <- EPI_2010_broken[1,]
EPI_2010 <- EPI_2010[-1,]
EPI_2010  

View(EPI_2010)
summary(EPI_2010)

head(Boston)
head(Boston,15)
tail(Boston)
dim(Boston)
names(Boston)
str(Boston)
nrow(Boston)
ncol(Boston)
summary(Boston)
Boston$crim
summary(Boston$crim)
