# Importating Libraries
library(tidyverse)
library(ggforce)

df = read.csv("batch_1.csv")

## Make file for each set of runs, make graphs for those ##


p1 = df %>%
  ggplot(aes(x =Day)) + geom_point(aes(y = Alive, color = Plate)) +
  geom_line( aes(y = Alive, color = Plate)) + 
  facet_grid_paginate(Plate~Well, nrow = 2, ncol = 12) +  
  labs(title = "Artemia Growth: Batch 1", fill = "Molt: 1 = True 0 = False",
       color = "Plate Name", x = "Day of Growth") +
  geom_point(aes(y = Molted, fill = 'Molt'), shape = 4, size = 2, alpha = .65) +
  scale_y_continuous(breaks = c(0,1)) + scale_x_continuous(breaks = c(1,2,3,4,5,6,7))

p2 = df %>%
  ggplot(aes(x =Day)) + geom_point(aes(y = Alive, color = Plate)) +
  geom_line( aes(y = Alive, color = Plate)) + 
  facet_grid_paginate(Plate~Well, nrow = 2, ncol = 12, page = 2) +  
  labs(title = "Artemia Growth: Batch 1", fill = "Molt: 1 = True 0 = False",
       color = "Plate Name", x = "Day of Growth") +
  geom_point(aes(y = Molted, fill = 'Molt'), shape = 4, size = 2, alpha = .65) +
  scale_y_continuous(breaks = c(0,1)) + scale_x_continuous(breaks = c(1,2,3,4,5,6,7))

ggsave("./batch1_plot.png", plot = p1, width = 10, height = 5, units = "in", dpi = 300)
ggsave("./batch1_plot2.png", plot = p2, width = 10, height = 5, units = "in", dpi = 300)

df2 = read.csv("batch_2.csv")

p1 = df2 %>%
  ggplot(aes(x =Day)) + geom_point(aes(y = Alive, color = Plate)) +
  geom_line( aes(y = Alive, color = Plate)) + 
  facet_grid_paginate(Plate~Well, nrow = 2, ncol = 12) +  
  labs(title = "Artemia Growth: Batch 2", fill = "Molt: 1 = True 0 = False",
       color = "Plate Name", x = "Day of Growth") +
  geom_point(aes(y = Molted, fill = 'Molt'), shape = 4, size = 2, alpha = .65) +
  scale_y_continuous(breaks = c(0,1)) + scale_x_continuous(breaks = c(1,2,3,4,5,6,7))

p2 = df2 %>%
  ggplot(aes(x =Day)) + geom_point(aes(y = Alive, color = Plate)) +
  geom_line( aes(y = Alive, color = Plate)) + 
  facet_grid_paginate(Plate~Well, nrow = 2, ncol = 12, page = 2) +  
  labs(title = "Artemia Growth: Batch 2", fill = "Molt: 1 = True 0 = False",
       color = "Plate Name", x = "Day of Growth") +
  geom_point(aes(y = Molted, fill = 'Molt'), shape = 4, size = 2, alpha = .65) +
  scale_y_continuous(breaks = c(0,1)) + scale_x_continuous(breaks = c(1,2,3,4,5,6,7))

ggsave("./batch2_plot.png", plot = p1, width = 10, height = 5, units = "in", dpi = 300)
ggsave("./batch2_plot2.png", plot = p2, width = 10, height = 5, units = "in", dpi = 300)

df3 = read.csv("batch_3.csv")

p1 = df3 %>%
  ggplot(aes(x =Day)) + geom_point(aes(y = Alive, color = Plate)) +
  geom_line( aes(y = Alive, color = Plate)) + 
  facet_grid_paginate(Plate~Well, nrow = 2, ncol = 12) +  
  labs(title = "Artemia Growth: Batch 3", fill = "Molt: 1 = True 0 = False",
       color = "Plate Name", x = "Day of Growth") +
  geom_point(aes(y = Molted, fill = 'Molt'), shape = 4, size = 2, alpha = .65) +
  scale_y_continuous(breaks = c(0,1)) + scale_x_continuous(breaks = c(2,4,6,8,10))

p2 = df3 %>%
  ggplot(aes(x =Day)) + geom_point(aes(y = Alive, color = Plate)) +
  geom_line( aes(y = Alive, color = Plate)) + 
  facet_grid_paginate(Plate~Well, nrow = 2, ncol = 12, page = 2) +  
  labs(title = "Artemia Growth: Batch 3", fill = "Molt: 1 = True 0 = False",
       color = "Plate Name", x = "Day of Growth") +
  geom_point(aes(y = Molted, fill = 'Molt'), shape = 4, size = 2, alpha = .65) +
  scale_y_continuous(breaks = c(0,1)) + scale_x_continuous(breaks = c(2,4,6,8,10))

p3 = df3 %>%
  ggplot(aes(x =Day)) + geom_point(aes(y = Alive, color = Plate)) +
  geom_line( aes(y = Alive, color = Plate)) + 
  facet_grid_paginate(Plate~Well, nrow = 2, ncol = 12, page = 3) +  
  labs(title = "Artemia Growth: Batch 3", fill = "Molt: 1 = True 0 = False",
       color = "Plate Name", x = "Day of Growth") +
  geom_point(aes(y = Molted, fill = 'Molt'), shape = 4, size = 2, alpha = .65) +
  scale_y_continuous(breaks = c(0,1)) + scale_x_continuous(breaks = c(2,4,6,8,10))

p4 = df3 %>%
  ggplot(aes(x =Day)) + geom_point(aes(y = Alive, color = Plate)) +
  geom_line( aes(y = Alive, color = Plate)) + 
  facet_grid_paginate(Plate~Well, nrow = 2, ncol = 12, page = 4) +  
  labs(title = "Artemia Growth: Batch 3", fill = "Molt: 1 = True 0 = False",
       color = "Plate Name", x = "Day of Growth") +
  geom_point(aes(y = Molted, fill = 'Molt'), shape = 4, size = 2, alpha = .65) +
  scale_y_continuous(breaks = c(0,1)) + scale_x_continuous(breaks = c(2,4,6,8,10))

ggsave("./batch3_plot.png", plot = p1, width = 10, height = 5, units = "in", dpi = 300)
ggsave("./batch3_plot2.png", plot = p2, width = 10, height = 5, units = "in", dpi = 300)
ggsave("./batch3_plot3.png", plot = p3, width = 10, height = 5, units = "in", dpi = 300)
ggsave("./batch3_plot4.png", plot = p4, width = 10, height = 5, units = "in", dpi = 300)


df4 = read.csv("batch_4.csv")

p1 = df4 %>%
  ggplot(aes(x =Day)) + geom_point(aes(y = Alive, color = Plate)) +
  geom_line( aes(y = Alive, color = Plate)) + 
  facet_grid_paginate(Plate~Well, nrow = 2, ncol = 12) +  
  labs(title = "Artemia Growth: Batch 4", fill = "Molt: 1 = True 0 = False",
       color = "Plate Name", x = "Day of Growth") +
  geom_point(aes(y = Molted, fill = 'Molt'), shape = 4, size = 2, alpha = .65) +
  scale_y_continuous(breaks = c(0,1)) + scale_x_continuous(breaks = c(4,8,12))

p2 = df4 %>%
  ggplot(aes(x =Day)) + geom_point(aes(y = Alive, color = Plate)) +
  geom_line( aes(y = Alive, color = Plate)) + 
  facet_grid_paginate(Plate~Well, nrow = 2, ncol = 12, page = 2) +  
  labs(title = "Artemia Growth: Batch 4", fill = "Molt: 1 = True 0 = False",
       color = "Plate Name", x = "Day of Growth") +
  geom_point(aes(y = Molted, fill = 'Molt'), shape = 4, size = 2, alpha = .65) +
  scale_y_continuous(breaks = c(0,1)) + scale_x_continuous(breaks = c(4,8,12))

p3 = df4 %>%
  ggplot(aes(x =Day)) + geom_point(aes(y = Alive, color = Plate)) +
  geom_line( aes(y = Alive, color = Plate)) + 
  facet_grid_paginate(Plate~Well, nrow = 2, ncol = 12, page = 3) +  
  labs(title = "Artemia Growth: Batch 4", fill = "Molt: 1 = True 0 = False",
       color = "Plate Name", x = "Day of Growth") +
  geom_point(aes(y = Molted, fill = 'Molt'), shape = 4, size = 2, alpha = .65) +
  scale_y_continuous(breaks = c(0,1)) + scale_x_continuous(breaks = c(4,8,12))

p4 = df4 %>%
  ggplot(aes(x =Day)) + geom_point(aes(y = Alive, color = Plate)) +
  geom_line( aes(y = Alive, color = Plate)) + 
  facet_grid_paginate(Plate~Well, nrow = 2, ncol = 12, page = 4) +  
  labs(title = "Artemia Growth: Batch 4", fill = "Molt: 1 = True 0 = False",
       color = "Plate Name", x = "Day of Growth") +
  geom_point(aes(y = Molted, fill = 'Molt'), shape = 4, size = 2, alpha = .65) +
  scale_y_continuous(breaks = c(0,1)) + scale_x_continuous(breaks = c(4,8,12))

ggsave("./batch4_plot.png", plot = p1, width = 10, height = 5, units = "in", dpi = 300)
ggsave("./batch4_plot2.png", plot = p2, width = 10, height = 5, units = "in", dpi = 300)
ggsave("./batch4_plot3.png", plot = p3, width = 10, height = 5, units = "in", dpi = 300)
ggsave("./batch4_plot4.png", plot = p4, width = 10, height = 5, units = "in", dpi = 300)

df5 = read.csv("batch_5.csv")

p1 = df5 %>%
  ggplot(aes(x =Day)) + geom_point(aes(y = Alive, color = Plate)) +
  geom_line( aes(y = Alive, color = Plate)) + 
  facet_grid_paginate(Plate~Well, nrow = 2, ncol = 12) +  
  labs(title = "Artemia Growth: Batch 5", fill = "Molt: 1 = True 0 = False",
       color = "Plate Name", x = "Day of Growth") +
  geom_point(aes(y = Molted, fill = 'Molt'), shape = 4, size = 2, alpha = .65) +
  scale_y_continuous(breaks = c(0,1)) + scale_x_continuous(breaks = c(4,8,12))

p2 = df5 %>%
  ggplot(aes(x =Day)) + geom_point(aes(y = Alive, color = Plate)) +
  geom_line( aes(y = Alive, color = Plate)) + 
  facet_grid_paginate(Plate~Well, nrow = 2, ncol = 12, page = 2) +  
  labs(title = "Artemia Growth: Batch 5", fill = "Molt: 1 = True 0 = False",
       color = "Plate Name", x = "Day of Growth") +
  geom_point(aes(y = Molted, fill = 'Molt'), shape = 4, size = 2, alpha = .65) +
  scale_y_continuous(breaks = c(0,1)) + scale_x_continuous(breaks = c(4,8,12))

ggsave("./batch5_plot.png", plot = p1, width = 10, height = 5, units = "in", dpi = 300)
ggsave("./batch5_plot2.png", plot = p2, width = 10, height = 5, units = "in", dpi = 300)

df6 = read.csv("batch_6.csv")

p1 = df6 %>%
  ggplot(aes(x =Day)) + geom_point(aes(y = Alive, color = Plate)) +
  geom_line( aes(y = Alive, color = Plate)) + 
  facet_grid_paginate(Plate~Well, nrow = 2, ncol = 12) +  
  labs(title = "Artemia Growth: Batch 6", fill = "Molt: 1 = True 0 = False",
       color = "Plate Name", x = "Day of Growth") +
  geom_point(aes(y = Molted, fill = 'Molt'), shape = 4, size = 2, alpha = .65) +
  scale_y_continuous(breaks = c(0,1)) + scale_x_continuous(breaks = c(4,8,12,16,20))

p2 = df6 %>%
  ggplot(aes(x =Day)) + geom_point(aes(y = Alive, color = Plate)) +
  geom_line( aes(y = Alive, color = Plate)) + 
  facet_grid_paginate(Plate~Well, nrow = 2, ncol = 12, page = 2) +  
  labs(title = "Artemia Growth: Batch 6", fill = "Molt: 1 = True 0 = False",
       color = "Plate Name", x = "Day of Growth") +
  geom_point(aes(y = Molted, fill = 'Molt'), shape = 4, size = 2, alpha = .65) +
  scale_y_continuous(breaks = c(0,1)) + scale_x_continuous(breaks = c(4,8,12,16,20))

ggsave("./batch6_plot.png", plot = p1, width = 10, height = 5, units = "in", dpi = 300)
ggsave("./batch6_plot2.png", plot = p2, width = 10, height = 5, units = "in", dpi = 300)


#df %>%
#  ggplot(aes(x =Day)) + geom_jitter(aes(y = Alive, color = Well), 
#                                    position = position_jitter(height = 0.25, width = 0 )) +
#  geom_smooth( aes(y = Alive, color = Well), alpha = 0.5, se = FALSE) + 
#  facet_wrap(~Plate) +  
#  labs(title = "Artemia Growth: Batch 1", fill = "Molt: 1 = True 0 = False",
#       color = "Plate Name", x = "Day of Growth") +
#  geom_point(aes(y = Molted, fill = 'Molt', color = Well), shape = 4, size = 2, alpha = .65) +
#  scale_y_continuous(breaks = c(0,1)) + scale_x_continuous(breaks = c(1,2,3,4,5,6,7))
