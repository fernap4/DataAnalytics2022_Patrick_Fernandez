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

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)

help("qqnorm")
par(pty="s")
qqnorm(EPI); qqline(EPI)

qqplot(qt(ppoints(250), df=5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

plot(ecdf(EPI_data$EPI),do.points=FALSE,verticals = TRUE) 
plot(ecdf(EPI_data$EPI),do.points=TRUE,verticals = TRUE)
par(pty="s")
help("qqnorm")
help("qqplot")
qqnorm(EPI_data$EPI)
qqline(EPI_data$EPI)
qqplot(qt(ppoints(250),df=5),x, xlab = "Q-Q plot")
qqline(x)

boxplot(EPI_data$EPI, EPI_data$DALY)


attach(multivariate)
mm<-lm(Homeowners~Immigrants)
