library(tidyverse)

df = read.csv("batch_9_edit.csv")

low_food = subset(df, Plate == "26-09-19 C(L)", select = c("Date","Month","Year","Plate","Day",
                                                           "Well","Alive","Molted"))

high_food_a = subset(df, Plate == "26-09-19 A(H)",
                   select = c("Date","Month","Year","Plate","Day","Well","Alive","Molted"))

high_food_b = subset(df, Plate == "26-09-19 B(H)",
                     select = c("Date","Month","Year","Plate","Day","Well","Alive","Molted"))

low_avg = sum(low_food$Alive, na.rm = TRUE) / 12
low_avg = round(low_avg, digits = 2)

high_a_avg = sum(high_food_a$Alive, na.rm = TRUE) / 12
high_a_avg = round(high_a_avg, digits = 2)

high_b_avg = sum(high_food_b$Alive, na.rm = TRUE) / 12
high_b_avg = round(high_b_avg, digits = 2)

avg = c(high_a_avg,high_b_avg,low_avg)
plate = c("Plate A", "Plate B", "Plate C")
food = data.frame(plate,avg)

food %>%
  ggplot(aes(x = plate, y = avg, color = plate)) + geom_col()


df = read.csv("batch_10_edit.csv")
