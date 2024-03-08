#Humza Humayun - HW6 - DATA 3421
install.packages("tidyverse")
library(ggplot2)
house_price <- read.csv("C:/Users/humay/DATA-SCIENCE/DATA-3421/HW/6/house_price.csv")
house_price
#1:
ggplot(house_price, aes(x = Size_sqm, y = Price, color = Location))+geom_point()
#2:
ggplot(house_price, aes(x = Age_years, y = Price))+geom_point()+  geom_smooth(method = "lm", se = FALSE)
#3: 
ggplot(house_price, aes(x = Size_sqm, y = Price)) +
  geom_point(size = 3, color = "blue") 
#4:
avg_price <- aggregate(Price ~ Location, data = house_price, FUN = mean)
ggplot(avg_price, aes(x = Location, y = Price)) +
  geom_bar(stat = "identity") +
  labs(x = "Location", y = "Average Price")+theme_light()
#5:
ggplot(house_price, aes(x = Price)) +
  geom_histogram(binwidth = 10000, fill = "orange", color = "black") +
  labs(x = "Price", y = "Frequency")+theme_light()
#6:
ggplot(house_price, aes(x = Size_sqm)) +
  geom_histogram(aes(y = ..density..), binwidth = 50, fill = "orange", color = "black", alpha = 0.5) +
  geom_density(color = "red") +
  labs(x = "Size_sqm", y = "Density") + theme_light()
#7:
ggplot(house_price, aes(x = Condition, fill = Condition)) +
  geom_bar() +
  labs(x = "Condition", y = "Count") +
  scale_fill_manual(values = c("Excellent" = "green", "Good" = "chartreuse1", "Fair" = "yellow", "Needs Work" = "darkorange2")) +
  theme_light()
#8:
ggplot(house_price, aes(x = Size_sqm, y = Price)) +
  geom_point() +
  facet_wrap(~ Location) +
  theme_light()
#9:
linearReg_houses <- lm(Price ~ Size_sqm + Bedrooms + Bathrooms + Age_years, data = house_price)
linearReg_houses
summary(linearReg_houses)
#10:
linearReg_houses2 <- lm(Price ~ Size_sqm + Bedrooms + Bathrooms + Age_years + Distance_to_city_center_km, data = house_price)
linearReg_houses2
summary(linearReg_houses2)
