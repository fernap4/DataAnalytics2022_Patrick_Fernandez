install.packages("partykit")

library(rpart)
library(partykit)
library(ggplot2)
library(randomForest)

data(Titanic)
head(Titanic)
View(Titanic)

tiTree <- rpart(
  Survived ~ .,
  data = Titanic,
  method = "class",
  minsplit = 2,
  minbucket = 1,
  cp = -1
)

tiTree




tiCTree <- ctree(Survived ~ .,
  data = Titanic,
  control = ctree_control(minbucket=30, maxsurrogate=Inf, maxdepth=3)
  )

print(tiCTree)


tiCluster <- hclust(dist(Titanic, method="euclidean"), method = "complete")
plot(tiCluster, cex=0.6)




set.seed(1234)
ti.fit <- randomForest(Survived ~ ., 
                       data = Titanic, 
                       ntree=100, 
                       keep.forests = FALSE,
                       importance = TRUE
                       )
ti.fit  
