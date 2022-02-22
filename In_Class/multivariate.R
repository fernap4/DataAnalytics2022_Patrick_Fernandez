attach(multivariate)
mm <- lm(Homeowners~Immigrants)
mm

plot(Income, Immigrants, main = "Scatterplot")
plot(Immigrants, Homeowners)
abline(mm)
abline(mm, col=2, lwd=3)

summary(mm)
attributes(mm)
mm$coefficients

plot(Homeowners ~ Immigrants)
