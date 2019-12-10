library(tidyverse)

df = read.csv("batch_9_edit_plate1.csv")
df1 = read.csv('batch_9_edit_plate2.csv')
df2 = read.csv('batch_9_edit_plate3.csv')

df3 = rbind(df, df1)
df = rbind(df3,df2)

df %>%
  ggplot(aes(x = Day, y = Total_Dead, color = Plate_Name)) + geom_point() +
  geom_line(aes(y = 6, color = "Half Point")) + geom_smooth(se = FALSE)
