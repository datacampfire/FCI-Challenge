library(rvest)
library(dplyr)
library(readr)
library(stringr)

list_links = read_csv("google/list_links.csv")

envir = as.environment(1)

for(j in 1:nrow(list_links)) {
  if(!file.exists(paste0("google/news_",j,".html"))) {
    news = try(read_html(as.character(list_links[j,1])) %>% 
                 html_nodes("p") %>%
                 html_text())
    try(write_lines(news,paste0("google/news_",j,".txt")))
    try(assign(paste0("news_",j),news,envir=envir))
  } else {
    try(assign(paste0("news_",j),read_lines(paste0("google/news_",j,".html")),envir=envir))
  }
}
