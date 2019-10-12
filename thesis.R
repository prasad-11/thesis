library(rvest)
install.packages("rvest") 
site <- ("http://www.greyhound-data.com/d?r=4506493")
url <- read_html(site)
#session <- html_session(site)
#session %>% follow_link(2)
Name <- html_nodes(url,"#green td:nth-child(2) :nth-child(1)") %>% html_text("Name")

Finishing_position <- html_nodes(url,"#green tr+ tr td:nth-child(1) , #green td:nth-child(1) b") %>% html_text("Finishing_position")

Finishing_time <- html_nodes(url,"td:nth-child(8) , td:nth-child(8) b") %>% html_text("Finishing_time")


a <- data.frame(Name,Finishing_position)
View(a)
