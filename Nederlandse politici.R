token <- create_token(app = "2021populariteit", 
                      consumer_key = "OpMedJQhRJiTx7cTT06riu43p",
                      consumer_secret = "e9C74G96ADSgyV0wJppuYeGPjQ4aV6JUhM0MinLJaCZv4xjcOn",
                      access_token = "4212293776-73PRGCdbriQqiHGy3wzeZgN6IkhfNiKCIpY7nHm",
                      access_secret = "Na0jD96fkscvK0BbjouC7O5u9KsqUt3b4ua4V3eSTIOz4")
token

install.packages("tidyverse")
install.packages("lubridate")
install.packages("dygraphs")
install.packages("gtrendsR")
install.packages("dplyr")
install.packages("maps")
install.packages("prophet")
install.packages("twitteR")
install.packages("rtweet")
install.packages("devtools")


library(tidyverse)
library(lubridate)
library(dygraphs)
library(gtrendsR)
library(dplyr)
library(maps)
library(prophet)
library(twitteR)
library(rtweet)
#stap 1 -> Wilders

Naam <- c("Geert Wilders", "Sigrid Kaag", "Lilian Marijnissen")
Username <- c("@geertwilders", "@SigridKaag", "@MarijnissenL")
Partij <- c("PVV", "D66", "SP")

Lijst <- data.frame(Naam, Username, Partij)

Gebruiker <- get_timeline("@SigridKaag", n= 10000)
Organisch <- Gebruiker[Gebruiker$is_retweet==FALSE,]
Organisch <- subset(Organisch, is.na(Organisch$reply_to_status_id))
Retweet <- Organisch$retweet_count
Datum <- Organisch$created_at
Retweetcount <- data.frame(Datum, Retweet)
colnames(Retweetcount) <- c("Datum", "Retweet")


Gebruiker1 <- get_timeline("@thierrybaudet", n= 10000)
Organisch1 <- Gebruiker1[Gebruiker1$is_retweet==FALSE,]
Organisch1 <- subset(Organisch1, is.na(Organisch1$reply_to_status_id))
Retweet1 <- Organisch1$retweet_count
Datum1 <- Organisch1$created_at
Retweetcount1 <- data.frame(Datum1, Retweet1)
colnames(Retweetcount) <- c("Datum1", "Retweet1")

Gebruiker2 <- get_timeline("@MarijnissenL", n= 10000)
Organisch2 <- Gebruiker2[Gebruiker2$is_retweet==FALSE,]
Organisch2 <- subset(Organisch2, is.na(Organisch2$reply_to_status_id))
Retweet2 <- Organisch2$retweet_count
Datum2 <- Organisch2$created_at
Retweetcount2 <- data.frame(Datum2, Retweet2)
colnames(Retweetcount) <- c("Datum2", "Retweet2")

Gebruiker3 <- get_timeline("@geertwilderspvv", n= 10000)
Organisch3 <- Gebruiker3[Gebruiker3$is_retweet==FALSE,]
Organisch3 <- subset(Organisch3, is.na(Organisch3$reply_to_status_id))
Retweet3 <- Organisch3$retweet_count
Datum3 <- Organisch3$created_at
Retweetcount3 <- data.frame(Datum3, Retweet3)
colnames(Retweetcount) <- c("Datum3", "Retweet3")

Gebruiker4 <- get_timeline("@keesvdstaaij", n= 10000)
Organisch4 <- Gebruiker4[Gebruiker4$is_retweet==FALSE,]
Organisch4 <- subset(Organisch4, is.na(Organisch4$reply_to_status_id))
Retweet4 <- Organisch4$retweet_count
Datum4 <- Organisch4$created_at
Retweetcount4 <- data.frame(Datum4, Retweet4)
colnames(Retweetcount) <- c("Datum4", "Retweet4")

Gebruiker5 <- get_timeline("@jesseklaver", n= 10000)
Organisch5 <- Gebruiker5[Gebruiker5$is_retweet==FALSE,]
Organisch5 <- subset(Organisch5, is.na(Organisch5$reply_to_status_id))
Retweet5 <- Organisch5$retweet_count
Datum5 <- Organisch5$created_at
Retweetcount5 <- data.frame(Datum5, Retweet5)
colnames(Retweetcount) <- c("Datum5", "Retweet5")

Gebruiker6 <- get_timeline("@markrutte", n= 10000)
Organisch6 <- Gebruiker6[Gebruiker6$is_retweet==FALSE,]
Organisch6 <- subset(Organisch6, is.na(Organisch6$reply_to_status_id))
Retweet6 <- Organisch6$retweet_count
Datum6 <- Organisch6$created_at
Retweetcount6 <- data.frame(Datum6, Retweet6)
colnames(Retweetcount) <- c("Datum6", "Retweet6")

Gebruiker7 <- get_timeline("@gertjansegers", n= 10000)
Organisch7 <- Gebruiker7[Gebruiker7$is_retweet==FALSE,]
Organisch7 <- subset(Organisch7, is.na(Organisch7$reply_to_status_id))
Retweet7 <- Organisch7$retweet_count
Datum7 <- Organisch7$created_at
Retweetcount7 <- data.frame(Datum7, Retweet7)
colnames(Retweetcount) <- c("Datum7", "Retweet7")

Gebruiker8 <- get_timeline("@WBHoekstra", n= 10000)
Organisch8 <- Gebruiker8[Gebruiker8$is_retweet==FALSE,]
Organisch8 <- subset(Organisch8, is.na(Organisch8$reply_to_status_id))
Retweet8 <- Organisch8$retweet_count
Datum8 <- Organisch8$created_at
Retweetcount8 <- data.frame(Datum8, Retweet8)
colnames(Retweetcount) <- c("Datum8", "Retweet8")

Gebruiker9 <- get_timeline("@PloumenLilianne", n= 10000)
Organisch9 <- Gebruiker9[Gebruiker9$is_retweet==FALSE,]
Organisch9 <- subset(Organisch9, is.na(Organisch9$reply_to_status_id))
Retweet9 <- Organisch9$retweet_count
Datum9 <- Organisch9$created_at
Retweetcount9 <- data.frame(Datum9, Retweet9)
colnames(Retweetcount) <- c("Datum9", "Retweet9")

Gebruiker10 <- get_timeline("@estherouwehand", n= 10000)
Organisch10 <- Gebruiker10[Gebruiker10$is_retweet==FALSE,]
Organisch10 <- subset(Organisch10, is.na(Organisch10$reply_to_status_id))
Retweet10 <- Organisch10$retweet_count
Datum10 <- Organisch10$created_at
Retweetcount10 <- data.frame(Datum10, Retweet10)
colnames(Retweetcount) <- c("Datum10", "Retweet10")

Gebruiker11 <- get_timeline("@tunahankuzu", n= 10000)
Organisch11 <- Gebruiker11[Gebruiker11$is_retweet==FALSE,]
Organisch11 <- subset(Organisch11, is.na(Organisch11$reply_to_status_id))
Retweet11 <- Organisch11$retweet_count
Datum11 <- Organisch11$created_at
Retweetcount11 <- data.frame(Datum11, Retweet11)
colnames(Retweetcount) <- c("Datum11", "Retweet11")

Gebruiker12 <- get_timeline("@minpres", n= 10000)
Organisch12 <- Gebruiker12[Gebruiker12$is_retweet==FALSE,]
Organisch12 <- subset(Organisch12, is.na(Organisch12$reply_to_status_id))
Retweet12 <- Organisch12$retweet_count
Datum12 <- Organisch12$created_at
Retweetcount12 <- data.frame(Datum12, Retweet12)
colnames(Retweetcount) <- c("Datum12", "Retweet12")




p = ggplot() + 
  geom_smooth(data = Retweetcount, aes(x = Datum, y = Retweet), color = "green") + 
  geom_smooth(data = Retweetcount1, aes(x = Datum1, y = Retweet1), color = "maroon") +
  geom_smooth(data = Retweetcount2, aes(x = Datum2, y = Retweet2), color = "red") + 
  geom_smooth(data = Retweetcount3, aes(x = Datum3, y = Retweet3), color = "blue") + 
  geom_smooth(data = Retweetcount4, aes(x = Datum4, y = Retweet4), color = "orange") + 
  geom_smooth(data = Retweetcount5, aes(x = Datum5, y = Retweet5), color = "green1") + 
  geom_smooth(data = Retweetcount7, aes(x = Datum7, y = Retweet7), color = "lightskyblue1") + 
  geom_smooth(data = Retweetcount8, aes(x = Datum8, y = Retweet8), color = "chartreuse") + 
  geom_smooth(data = Retweetcount9, aes(x = Datum9, y = Retweet9), color = "red4") + 
  geom_smooth(data = Retweetcount10, aes(x = Datum10, y = Retweet10), color = "springgreen1") + 
  geom_smooth(data = Retweetcount11, aes(x = Datum11, y = Retweet11), color = "turquoise4") + 
  geom_smooth(data = Retweetcount12, aes(x = Datum12, y = Retweet12), color = "black")  

print(p)



















