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


Lijst <- data.frame(Naam, Username, Partij)

countretweet <- function(a) {

  Gebruiker <- get_timeline(Lijst$Username[, 1], n= 10000)
  Organisch <- Gebruiker[Gebruiker$is_retweet==FALSE,]
  Organisch <- subset(Organisch, is.na(Organisch$reply_to_status_id))
  
  Organisch <- Organisch %>% arrange(-favorite_count)
  Organisch[1,5]
  
  Organisch <- Organisch %>% arrange(-retweet_count)
  Organisch[1,5]
  
  Retweet <- Organisch$retweet_count
  Datum <- Organisch$created_at
  Retweetcount <- data.frame(Datum, Retweet)
  colnames(Retweetcount) <- c("Datum", "Retweet")
  
  ggplot(Retweetcount, aes(Datum, Retweet)) +
    geom_smooth()
}

#Stap 2 -> groep van politici

Naam <- c("Geert Wilders", "Sigrid Kaag", "Lilian Marijnissen")
Username <- c("@geertwilders", "@SigridKaag", "@MarijnissenL")
Partij <- c("PVV", "D66", "SP")

Lijst <- data.frame(Naam, Username, Partij)

countretweet <- function(a) {
    
  Gebruiker <- get_timeline(Lijst$Username[, 1], n= 10000)
  Organisch <- Gebruiker[Gebruiker$is_retweet==FALSE,]
  Organisch <- subset(Organisch, is.na(Organisch$reply_to_status_id))
  
  Retweet <- Organisch$retweet_count
  Datum <- Organisch$created_at
  Retweetcount <- data.frame(Datum, Retweet)
  colnames(Retweetcount) <- c("Datum", "Retweet")
  
  ggplot(Retweetcount, aes(Datum, Retweet)) +
    geom_smooth()
}






















