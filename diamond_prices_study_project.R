train_df <- read.csv('diamonds.csv')

linearMod <- lm(price ~ carat + cut + color + clarity, data=train_df)
summary(linearMod)
head(train_df)

test_df <- read.csv('new-diamonds.csv')
p <- predict(linearMod, test_df)
head(p)
total <- sum(p)
result <- total * 0.7
print(result)
