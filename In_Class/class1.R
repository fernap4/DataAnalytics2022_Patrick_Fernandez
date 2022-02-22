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


empty.DataFrame = data.frame()
empty.DataFrame


v1 <- 1:10
v1
letters
v2 <- letters[1:10]
v2
df <- data.frame(col_name.1 = v1, First10Letters = v2)
df






