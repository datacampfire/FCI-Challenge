# setup -------------------------------------------------------------------
library(tidyverse)
library(twitteR)
library(stringr)

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

# helpers -----------------------------------------------------------------
snake_case <- function(x) {
  
  x %>% 
    tolower() %>% 
    str_replace_all("\\s+", "_")
  
}

# pars --------------------------------------------------------------------
search <- c("#DebateFrenteAmplio", "#DebateChileVamos",
            "#ElDebateRadial", "Exalmar", "#NoTeDeclararonReoPorLindo",
            "partidos politicos", "transparencia",
            "Beatriz Sanchez", "Mayol", "Piñera", "Kast", "Ossandon")


attrs <- c("id", "screenName", "created", "text", "favoriteCount",
           "retweetCount", "isRetweet", "retweeted", "location" )

# download data -----------------------------------------------------------
map(search, function(s) { # s <- sample(search, 1)

  message(s)
  
  fout <- snake_case(s) %>% 
    paste0("tweets_", ., ".rds") %>% 
    file.path("twitter", .) 
  
  if(file.exists(fout))
    return(TRUE)
    
  tweets <- searchTwitter(s, n = 5000, geocode="-33.4489,-70.6693,20mi")
  
  saveRDS(tweets, fout)
  
})


# process data ------------------------------------------------------------
map(search, function(s) { # s <- sample(search, 1)
  
  message(s)
  
  fout <- snake_case(s) %>% 
    paste0("tweets_", .) %>% 
    file.path("twitter", .) 
  
  tweets <- readRDS(paste0(fout, ".rds"))
  
  tweets_df <- map_df(tweets, function(t){ # t <- tweets[[1]]
    
    map(attrs, function(attr) t[[attr]]) %>% 
      set_names(attrs) %>% 
      as_data_frame()
    
  })
  
  tweets_df <- mutate(tweets_df, text = str_conv(text, "utf-8")) 
  
  glimpse(tweets_df)
  
  write_csv(tweets_df, paste0(fout, ".csv"))
  
})



