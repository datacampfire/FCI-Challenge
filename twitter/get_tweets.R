# ir a https://apps.twitter.com y crear una app

#install.packages(c("devtools","rjson","bit64","httr","dplyr"))

# reiniciar R

#library(devtools)
#install_github("geoffjentry/twitteR", force = TRUE)

library(twitteR)
library(tidyverse)

consumer_key = "xxx"
consumer_secret = "xxx"
access_token = "xxx"
access_secret = "xxx"

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

#favoritos = favorites("copano", n=200)

tendencias = getTrends(23424782) %>% 
  mutate(url = gsub("%23","#",url),
         url = gsub("%22","",url),
         query = gsub("%23","#",query),
         query = gsub("%22","",query)) %>% 
  write_csv(gsub(" ","_",paste0("twitter/trends_",Sys.time(),".csv"))) #chile= 23424782, buscar el pais en Yahoo! Where On Earth

tuits_DebateFrenteAmplio = searchTwitter("#DebateFrenteAmplio", n = 5000, geocode='-33.4489,-70.6693,20mi')
tuits_DebateChileVamos = searchTwitter("#DebateChileVamos", n = 5000, geocode='-33.4489,-70.6693,20mi')

tuits_ElDebateRadial = searchTwitter("#ElDebateRadial", n = 5000, geocode='-33.4489,-70.6693,20mi')
tuits_Exalmar = searchTwitter("Exalmar", n = 5000, geocode='-33.4489,-70.6693,20mi')
tuits_NoTeDeclararonReoPorLindo = searchTwitter("#NoTeDeclararonReoPorLindo", n = 5000, geocode='-33.4489,-70.6693,20mi')
tuits_partidos_politicos = searchTwitter("partidos politicos", n = 5000, geocode='-33.4489,-70.6693,20mi')

tuits_Sanchez = searchTwitter("Beatriz Sanchez", n = 5000, geocode='-33.4489,-70.6693,20mi')
tuits_Mayol = searchTwitter("Mayol", n = 5000, geocode='-33.4489,-70.6693,20mi')
tuits_Pinera = searchTwitter("Piñera", n = 5000, geocode='-33.4489,-70.6693,20mi')
tuits_Kast = searchTwitter("Kast", n = 5000, geocode='-33.4489,-70.6693,20mi')
tuits_Ossandon = searchTwitter("Ossandon", n = 5000, geocode='-33.4489,-70.6693,20mi')

textos_DebateChileVamos = vector(mode = "character", length = length(tuits_DebateChileVamos))
for (i in 1:length(textos_DebateChileVamos)) textos_DebateChileVamos[i] = tuits_DebateChileVamos[[i]]$getText()
write_lines(textos_DebateChileVamos, "twitter/textos_DebateChileVamos.txt")

textos_DebateFrenteAmplio = vector(mode = "character", length = length(tuits_DebateFrenteAmplio))
for (i in 1:length(textos_DebateFrenteAmplio)) textos_DebateFrenteAmplio[i] = tuits_DebateFrenteAmplio[[i]]$getText()
write_lines(textos_DebateFrenteAmplio, "twitter/textos_DebateFrenteAmplio.txt")

textos_ElDebateRadial = vector(mode = "character", length = length(tuits_ElDebateRadial))
for (i in 1:length(textos_ElDebateRadial)) textos_ElDebateRadial[i] = tuits_ElDebateRadial[[i]]$getText()
write_lines(textos_ElDebateRadial, "twitter/textos_ElDebateRadial.txt")

textos_ElDebateRadial = vector(mode = "character", length = length(tuits_ElDebateRadial))
for (i in 1:length(textos_ElDebateRadial)) textos_ElDebateRadial[i] = tuits_ElDebateRadial[[i]]$getText()
write_lines(textos_ElDebateRadial, "twitter/textos_ElDebateRadial.txt")

textos_Exalmar = vector(mode = "character", length = length(tuits_Exalmar))
for (i in 1:length(textos_Exalmar)) textos_Exalmar[i] = tuits_Exalmar[[i]]$getText()
write_lines(textos_Exalmar, "twitter/textos_Exalmar.txt")

textos_NoTeDeclararonReoPorLindo = vector(mode = "character", length = length(tuits_NoTeDeclararonReoPorLindo))
for (i in 1:length(textos_NoTeDeclararonReoPorLindo)) textos_NoTeDeclararonReoPorLindo[i] = tuits_NoTeDeclararonReoPorLindo[[i]]$getText()
write_lines(textos_NoTeDeclararonReoPorLindo, "twitter/textos_NoTeDeclararonReoPorLindo.txt")

textos_partidos_politicos = vector(mode = "character", length = length(tuits_partidos_politicos))
for (i in 1:length(textos_partidos_politicos)) textos_partidos_politicos[i] = tuits_partidos_politicos[[i]]$getText()
write_lines(textos_partidos_politicos, "twitter/textos_partidos_politicos.txt")

textos_Sanchez = vector(mode = "character", length = length(tuits_Sanchez))
for (i in 1:length(textos_Sanchez)) textos_Sanchez[i] = tuits_Sanchez[[i]]$getText()
write_lines(textos_Sanchez, "twitter/textos_Sanchez.txt")

textos_Mayol = vector(mode = "character", length = length(tuits_Mayol))
for (i in 1:length(textos_Mayol)) textos_Mayol[i] = tuits_Mayol[[i]]$getText()
write_lines(textos_Mayol, "twitter/textos_Mayol.txt")

textos_Pinera = vector(mode = "character", length = length(tuits_Pinera))
for (i in 1:length(textos_Pinera)) textos_Pinera[i] = tuits_Pinera[[i]]$getText()
write_lines(textos_Pinera, "twitter/textos_Pinera.txt")

textos_Kast = vector(mode = "character", length = length(tuits_Kast))
for (i in 1:length(textos_Kast)) textos_Kast[i] = tuits_Kast[[i]]$getText()
write_lines(textos_Kast, "twitter/textos_Kast.txt")

textos_Ossandon = vector(mode = "character", length = length(tuits_Ossandon))
for (i in 1:length(textos_Ossandon)) textos_Ossandon[i] = tuits_Ossandon[[i]]$getText()
write_lines(textos_Ossandon, "twitter/textos_Ossandon.txt")

