library(rvest)
library(dplyr)
library(readr)
library(stringr)

values = seq(0,30,10)

envir = as.environment(1)

for(j in 1:length(values)) {
  if(!file.exists(paste0("google/list_links.csv"))) {
    ht = read_html(paste0("https://www.google.cl/search?q=financiamiento+campañas+chile&start=",values[[j]]))
    links = ht %>% 
      html_nodes(xpath='//h3/a') %>% html_attr('href') %>% 
      gsub('/url\\?q=','',.) %>% 
      as_tibble() %>% 
      mutate(search_result = row_number()) %>% 
      filter(search_result <= 10)
    assign(paste0("links_",values[[j]]),links,envir=envir)
  } else {
    list_links = read_csv("google/list_links.csv")
  }
}

if(!file.exists(paste0("google/list_links.csv"))) {
  list_links = mget(ls(pattern = "links_")) %>% 
    bind_rows() %>% 
    select(-search_result) %>% 
    filter(!str_detect(value, 'pdf')) %>% 
    mutate(value = gsub("\\&sa=.*","",value)) %>% 
    write_csv("google/list_links.csv")
  
  rm(list = ls(pattern = "links_"))
}