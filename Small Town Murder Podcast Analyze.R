#view the structure of the dataset
str(podcast)
head(podcast)

#find the average length of the episodes
mean(podcast$Length)

#find the longest episode length
max(podcast$Length)

#find the shortest episode length
min(podcast$Length)

#How many times has each state been covered?
table(podcast['State'])

#Filter the state with the most coverage
podcast %>%
  filter(State == "Arizona")

#How much time was spent covering Arizona?
podcast %>%
  filter(State == "Arizona") %>%
  summarize(sum(Length))
maxlength <- 1233

#How much time was spent covering Alaska?
podcast %>%
  filter(State == "Alaska") %>%
  summarize(sum(Length))
minlength <- 126

#how much total time was spent making podcasts?
podcast%>%
  summarize(sum(Length))
totallength <- 41255

#show comparison of time spent talking about Arizona vs Alaska
minutes <- c(126, 1233)
labels <- c("Alaska", "Arizona")
png(file= "Comparison of Time Spent.jpg")
pie(minutes, labels, main = "Comparison of Time Spent", col = rainbow(length(minutes)))

    