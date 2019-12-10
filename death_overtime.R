library(tidyverse)

df = read.csv("batch_9_edit_plate1.csv")
df1 = read.csv('batch_9_edit_plate2.csv')
df2 = read.csv('batch_9_edit_plate3.csv')

df3 = rbind(df, df1)
df = rbind(df3,df2)

p1 = df %>%
  ggplot(aes(x = Day, y = Total_Dead, color = Plate_Name)) + geom_point() +
  geom_line(aes(y = 6, color = "Half Point")) + geom_smooth(se = FALSE) + 
  scale_x_continuous(breaks = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)) + 
  labs(title = "Deaths Over Time, Batch 9", y = "Total Dead", color = "Plate Name")

ggsave(filename = "./Plots/deathtime_b9.png", plot = p1, width = 10, height = 8, units = "in",
       dpi = 300)

df = read.csv("batch_1_plate1.csv")
df1 = read.csv("batch_1_plate2.csv")
df = rbind(df,df1)

p1 = df %>%
  ggplot(aes(x = Day, y = Total_Dead, color = Plate_Name)) + geom_point() +
  geom_line(aes(y = 12, color = "Half Point")) + geom_smooth(se = FALSE) + 
  scale_x_continuous(breaks = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)) + 
  labs(title = "Deaths Over Time, Batch 1", y = "Total Dead", color = "Plate Name")

ggsave(filename = "./Plots/deathtime_b1.png", plot = p1, width = 10, height = 8, units = "in",
       dpi = 300)

df = read.csv("batch_2_plate1.csv")
df1 = read.csv("batch_2_plate2.csv")
df = rbind(df, df1)

p1 = df %>%
  ggplot(aes(x = Day, y = Total_Dead, color = Plate_Name)) + geom_point() +
  geom_line(aes(y = 12, color = "Half Point")) + geom_smooth(se = FALSE) + 
  scale_x_continuous(breaks = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)) + 
  labs(title = "Deaths Over Time, Batch 2", y = "Total Dead", color = "Plate Name")

ggsave(filename = "./Plots/deathtime_b2.png", plot = p1, width = 10, height = 8, units = "in",
       dpi = 300)

df = read.csv("batch_3_plate1.csv")
df1 = read.csv("batch_3_plate2.csv")
df2 = read.csv("batch_3_plate3.csv")
df3 = read.csv("batch_3_plate4.csv")

df = rbind(df,df1,df2,df3)

p1 = df %>%
  ggplot(aes(x = Day, y = Total_Dead, color = Plate_Name)) + geom_point() +
  geom_line(aes(y = 12, color = "Half Point")) + geom_smooth(se = FALSE) + 
  scale_x_continuous(breaks = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)) + 
  labs(title = "Deaths Over Time, Batch 3", y = "Total Dead", color = "Plate Name")

ggsave(filename = "./Plots/deathtime_b3.png", plot = p1, width = 10, height = 8, units = "in",
       dpi = 300)

df = read.csv("batch_4_plate1.csv")
df1 = read.csv("batch_4_plate2.csv")
df2 = read.csv("batch_4_plate3.csv")
df3 = read.csv("batch_4_plate4.csv")

df = rbind(df,df1,df2,df3)

p1 = df %>%
  ggplot(aes(x = Day, y = Total_Dead, color = Plate_Name)) + geom_point() +
  geom_line(aes(y = 12, color = "Half Point")) + geom_smooth(se = FALSE) + 
  scale_x_continuous(breaks = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)) + 
  labs(title = "Deaths Over Time, Batch 4", y = "Total Dead", color = "Plate Name")

ggsave(filename = "./Plots/deathtime_b4.png", plot = p1, width = 10, height = 8, units = "in",
       dpi = 300)

df = read.csv("batch_5_plate1.csv")
df1 = read.csv("batch_5_plate2.csv")

df = rbind(df,df1)

p1 = df %>%
  ggplot(aes(x = Day, y = Total_Dead, color = Plate_Name)) + geom_point() +
  geom_line(aes(y = 12, color = "Half Point")) + geom_smooth(se = FALSE) + 
  scale_x_continuous(breaks = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)) + 
  labs(title = "Deaths Over Time, Batch 5", y = "Total Dead", color = "Plate Name")

ggsave(filename = "./Plots/deathtime_b5.png", plot = p1, width = 10, height = 8, units = "in",
       dpi = 300)

df = read.csv("batch_6_alldays_plate1.csv")
df1 = read.csv("batch_6_alldays_plate2.csv")
df2 = read.csv("batch_6_alldays_plate3.csv")
df3 = read.csv("batch_6_alldays_plate4.csv")

df = rbind(df,df1,df2,df3)

p1 = df %>%
  ggplot(aes(x = Day, y = Total_Dead, color = Plate_Name)) + geom_point() +
  geom_line(aes(y = 6, color = "Half Point")) + geom_smooth(se = FALSE) + 
  scale_x_continuous(breaks = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22)) + 
  labs(title = "Deaths Over Time, Batch 6", y = "Total Dead", color = "Plate Name")

ggsave(filename = "./Plots/deathtime_b6.png", plot = p1, width = 10, height = 8, units = "in",
       dpi = 300)

df = read.csv("batch_7_plate1.csv")
df1 = read.csv("batch_7_plate2.csv")
df = rbind(df,df1)

p1 = df %>%
  ggplot(aes(x = Day, y = Total_Dead, color = Plate_Name)) + geom_point() +
  geom_line(aes(y = 6, color = "Half Point")) + geom_smooth(se = FALSE) + 
  scale_x_continuous(breaks = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22)) + 
  labs(title = "Deaths Over Time, Batch 7", y = "Total Dead", color = "Plate Name")

ggsave(filename = "./Plots/deathtime_b7.png", plot = p1, width = 10, height = 8, units = "in",
       dpi = 300)

df = read.csv("batch_10_edit_plate1.csv")
df1 = read.csv("batch_10_edit_plate2.csv")
df2 = read.csv("batch_10_edit_plate3.csv")
df = rbind(df,df1,df2)

p1 = df %>%
  ggplot(aes(x = Day, y = Total_Dead, color = Plate_Name)) + geom_point() +
  geom_line(aes(y = 6, color = "Half Point")) + geom_smooth(se = FALSE) + 
  scale_x_continuous(breaks = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22)) + 
  labs(title = "Deaths Over Time, Batch 10", y = "Total Dead", color = "Plate Name")

ggsave(filename = "./Plots/deathtime_b10.png", plot = p1, width = 10, height = 8, units = "in",
       dpi = 300)

df = read.csv("batch_11_plate1.csv")
df1 = read.csv("batch_11_plate2.csv")
df2 = read.csv("batch_11_plate3.csv")
df3 = read.csv("batch_11_plate4.csv")
df = rbind(df,df1,df2,df3)

p1 = df %>%
  ggplot(aes(x = Day, y = Total_Dead, color = Plate_Name)) + geom_point() +
  geom_line(aes(y = 6, color = "Half Point")) + geom_smooth(se = FALSE) + 
  scale_x_continuous(breaks = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22)) + 
  labs(title = "Deaths Over Time, Batch 11", y = "Total Dead", color = "Plate Name")

ggsave(filename = "./Plots/deathtime_b11.png", plot = p1, width = 10, height = 8, units = "in",
       dpi = 300)
