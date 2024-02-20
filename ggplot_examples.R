chic <- readr::read_csv("https://cedricscherer.com/data/chicago-nmmaps-custom.csv")
tibble::glimpse(chic)
head(chic, 10)
library(ggplot2)
(g <- ggplot(chic, aes(x = date, y = temp)))

g + geom_point()

g + geom_line()

g + geom_line() + geom_point()

g + geom_point(color = "firebrick", shape = "diamond", size = 2)

g + geom_point(color = "firebrick", shape = "diamond", size = 2) +
  geom_line(color = "firebrick", linetype = "dotted", lwd = .3)


theme_set(theme_bw())

g + geom_point(color = "firebrick")

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)")
