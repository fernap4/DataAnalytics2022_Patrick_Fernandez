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

sorted.snowed <- order(RPI_Weather_Week["snowed"])

EPI_data <- X2010EPI_data
EPI_data

View(EPI_data)
summary(EPI_data)

attach(EPI_data)
fix(EPI_data)
tf <- is.na(EPI)
E <- EPI[!tf]

class(EPI) <- "numeric"
summary(EPI)
View(EPI)
fivenum(EPI, na.rm=TRUE)
stem(EPI)
hist(EPI)
hist(EPI, seq(30.,95.,1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw=1.)) #also try bw="SJ"
rug(EPI)
help(stem)

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPI); qqline(EPI)
x <- seq(30,95,1)
qqplot(qt(ppoints(250), df=5),x,xlab="Q-Q plot for tdsn")



help(distributions)


EPILand <- EPI[!Landlock]
Eland <- EPILand[!is.na(EPILand)]
hist(Eland)
hist(Eland, seq(30., 95., 1.0), prob=TRUE)

EPInsw <- EPI[!No_surface_water]
Ensw <- EPInsw[!is.na(EPInsw)]
hist(Ensw)
hist(Ensw, seq(30., 95., 1.0), prob=TRUE)

EPIDesert <- EPI[!Desert]
Edes <- EPIDesert[!is.na(EPIDesert)]
hist(Edes)
hist(Edes, seq(30., 95., 1.0), prob=TRUE)

EPIhpd <- EPI[!High_Population_Density]
Ehpd <- EPIhpd[!is.na(EPIhpd)]
hist(Ehpd)
hist(Ehpd, seq(30., 95., 1.0), prob=TRUE)

