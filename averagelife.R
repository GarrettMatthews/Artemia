library(tidyverse)


df = read.csv("batch_1.csv")

#x = 0

#for (i in df$Well){
#  if (df[df$Well == i, "Alive"] == 1){
#    x = x + 1
#  }
#}
#avg1 = x / 48
avg1 = sum(df$Alive, na.rm = TRUE) / 48
avg1 = round(avg1, digits = 2)

df = read.csv("batch_2.csv")
#x = 0
#for (i in df$Well){
#  if (df[df$Well == i, "Alive"] == 1){
#    x = x + 1
#  }
#}
#avg2 = x /48
avg2 = sum(df$Alive, na.rm = TRUE) / 48
avg2 = round(avg2, digits = 2)


df = read.csv("batch_3.csv")
#x = 0
#for (i in df$Well){
#  if (df[df$Well == i, "Alive"] == 1){
#    x = x + 1
#  }
#}
#avg3 = x /96
avg3 = sum(df$Alive, na.rm = TRUE) / 96
avg3 = round(avg3, digits = 2)


df = read.csv("batch_4.csv")
#x = 0
#for (i in df$Well){
#  if (df[df$Well == i, "Alive"] == 1){
#    x = x + 1
#  }
#}
#avg4 = x /96
avg4 = sum(df$Alive, na.rm = TRUE) / 96
avg4 = round(avg4, digits = 2)


df = read.csv("batch_5.csv")
#x = 0
#for (i in df$Well){
#  if (df[df$Well == i, "Alive"] == 1){
#    x = x + 1
#  }
#}
#avg5 = x /48
avg5 = sum(df$Alive, na.rm = TRUE) / 48
avg5 = round(avg5, digits = 2)


df = read.csv("batch_6_alldays.csv")
#x = 0
#for (i in df$Well){
#  if (df[df$Well == i, "Alive"] == 1){
#    x = x + 1
#  }
#}
#avg6 = x /48
avg6 = sum(df$Alive, na.rm = TRUE) / 48
avg6 = round(avg6, digits = 2)


df = read.csv("batch_7.csv")
#x = 0
#for (i in df$Well){
#  if (df[df$Well == i, "Alive"] == 1){
#    x = x + 1
#  }
#}
#avg7 = x /48
avg7 = sum(df$Alive, na.rm = TRUE) / 48
avg7 = round(avg7, digits = 2)


df = read.csv("batch_8_contaminated.csv")
#x = 0
#for (i in df$Well){
#  if (df[df$Well == i, "Alive"] == 1){
#    x = x + 1
#  }
#}
#avg8 = x /48
#avg8 = round(avg8, digits = 3)
avg8 = sum(df$Alive, na.rm = TRUE) / 48
avg8 = round(avg8, digits = 2)


df = read.csv("batch_9_edit.csv")
#x = 0
#for (i in df$Well){
#  if (df[df$Well == i, "Alive"] == 1){
#    x = x + 1
#  }
#}
#avg9 = x /36
#avg9 = round(avg9, digits = 3)
avg9 = sum(df$Alive, na.rm = TRUE) / 36
avg9 = round(avg9, digits = 2)


df = read.csv("batch_10_edit.csv")
#x = 0
#for (i in df$Well){
#  if (df[df$Well == i, "Alive"] == 1){
#    x = x + 1
#  }
#}
#avg10 = x /36
avg10 = sum(df$Alive, na.rm = TRUE) / 36
avg10 = round(avg10, digits = 2)



df = read.csv("batch_11.csv")
#x = 0
#for (i in df$Well){
#  if (df[df$Well == i, "Alive"] == 1){
#    x = x + 1
#  }
#}
#avg11 = x /48
avg11 = sum(df$Alive, na.rm = TRUE) / 48
avg11 = round(avg11, digits = 2)


batch = c(1,2,3,4,5,6,7,8,9,10,11)
avg = c(avg1,avg2,avg3,avg4,avg5,avg6,avg7,avg8,avg9,avg10,avg11)
df = data.frame(batch, avg)
color = "#adcfeeff"
p1 = df %>%
  ggplot(aes(x = batch, y = avg, label = avg)) + geom_point() + 
  geom_line(aes(color = color)) + labs(title = "Average Life Span per Trial", x = "Trial",
                                                     y = "Average Life in Days") +
  scale_x_continuous(breaks = c(1,2,3,4,5,6,7,8,9,10,11)) + geom_text(aes(label = avg), hjust = .05,
                                                          vjust = -0.0)



p1 = p1 + theme(legend.position = "none", panel.background = element_rect(fill = 'white'),
                panel.grid = element_line("#a1abb5"))
p1
ggsave(filename = "./Plots/avglife_fixed.png", plot = p1, width = 7.5, height = 5, units = "in",
       dpi = 300)
