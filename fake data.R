

### R examples
#Jaxson Freund
#Jan 23, 2024

### create dataset

#set a seed for reproducibility
set.seed(123)

#create a vector of beetle names
beetle_names <- c("Ladybug", "Stag Beetle", "Firefy Beetle", "Dung Beetle", "Jewel Beetle")

#Create a vector of beetle lengths
beetle_lengths <- runif(20,1,5) #random lengths between 1 and 5

#Create a vector of beetle lengths
beetle_colors <- sample(c("Red", "Black", "Green", "Yellow", "Blue"),20, replace = TRUE) #random colors

#create the random beetle dataframe
beetle_df <- data.frame(Name=sample(beetle_names, 20, replace = TRUE),
                        Length = beetle_lengths,
                        Color = beetle_colors)

write.csv (beetle_df, file = "data/fake_beetle_data.csv")

length_chart <- barplot(height = beetle_df$Length, names = beetle_df$Name)
