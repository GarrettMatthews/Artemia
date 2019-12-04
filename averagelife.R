library(tidyverse)

df = read.csv("batch_1.csv")

x = 0

for (i in df$Well){
  if (df[df$Well == i, "Alive"] == 1){
    x = x + 1
  }
}
avg1 = x / 48

df = read.csv("batch_2.csv")
x = 0
for (i in df$Well){
  if (df[df$Well == i, "Alive"] == 1){
    x = x + 1
  }
}
avg2 = x /48

df = read.csv("batch_3.csv")
x = 0
for (i in df$Well){
  if (df[df$Well == i, "Alive"] == 1){
    x = x + 1
  }
}
avg3 = x /96

df = read.csv("batch_4.csv")
x = 0
for (i in df$Well){
  if (df[df$Well == i, "Alive"] == 1){
    x = x + 1
  }
}
avg4 = x /96

df = read.csv("batch_5.csv")
x = 0
for (i in df$Well){
  if (df[df$Well == i, "Alive"] == 1){
    x = x + 1
  }
}
avg5 = x /48

df = read.csv("batch_6_alldays.csv")
x = 0
for (i in df$Well){
  if (df[df$Well == i, "Alive"] == 1){
    x = x + 1
  }
}
avg6 = x /48

df = read.csv("batch_7.csv")
x = 0
for (i in df$Well){
  if (df[df$Well == i, "Alive"] == 1){
    x = x + 1
  }
}
avg7 = x /48

df = read.csv("batch_8_contaminated.csv")
x = 0
for (i in df$Well){
  if (df[df$Well == i, "Alive"] == 1){
    x = x + 1
  }
}
avg8 = x /48
avg8 = 3.667

df = read.csv("batch_9.csv")
x = 0
for (i in df$Well){
  if (df[df$Well == i, "Alive"] == 1){
    x = x + 1
  }
}
avg9 = x /48
avg9 = 18.333

df = read.csv("batch_10.csv")
x = 0
for (i in df$Well){
  if (df[df$Well == i, "Alive"] == 1){
    x = x + 1
  }
}
avg10 = x /48

df = read.csv("batch_11.csv")
x = 0
for (i in df$Well){
  if (df[df$Well == i, "Alive"] == 1){
    x = x + 1
  }
}
avg11 = x /48

batch = c(1,2,3,4,5,6,7,8,9,10,11)
avg = c(avg1,avg2,avg3,avg4,avg5,avg6,avg7,avg8,avg9,avg10,avg11)
df = data.frame(batch, avg)
color = "#adcfeeff"
p1 = df %>%
  ggplot(aes(x = batch, y = avg, label = avg)) + geom_point() + 
  geom_line(aes(color = color)) + labs(title = "Average Life Span per Trial", x = "Trial",
                                                     y = "Average Life in Days") +
  scale_x_continuous(breaks = c(1,2,3,4,5,6,7,8,9,10,11)) + geom_text(aes(label = avg), hjust = 2,
                                                          vjust = 0.5)



p1 = p1 + theme(legend.position = "none", panel.background = element_rect(fill = 'white'),
                panel.grid = element_line("#a1abb5"))
p1
ggsave(filename = "./Plots/avglife_updated.png", plot = p1, width = 7.5, height = 5, units = "in",
       dpi = 300)
