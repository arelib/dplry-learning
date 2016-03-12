
install.packages("installr") # install 
setInternet2(TRUE)
installr::updateR() # updating R.

install.packages("dplyr")
install.packages("tidyr")
library("tidyr")
library("dplyr")
#install.packages("downloader")
#url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
#filename <- "msleep_ggplot2.csv"
#if (!file.exists(filename)) download(url,filename)
###testinh "tidyr" firstly
messy <- data.frame(
  name = c("Wilbur", "Petunia", "Gregory"),
  a = c(67, 80, 64),
  b = c(56, 90, 50)
)
messy
###use gather() to gather the a and b columns into key-value
###pairs of drug and heartrate:

messy %>%  gather(drug, heartrate, a:b)



read.csv("msleep_ggplot2.csv")
getwd()
setwd("~/edx course")
dir()
read.csv("msleep_ggplot2.csv")
msleep<-read.csv("msleep_ggplot2.csv")
head(msleep)
sleepData<-select(msleep,name,sleep_total)##select columns
head(sleepData)
head(select(msleep, -name)) ##sign - is exception
head(select(msleep,name:order)
head(select(msleep,one_of("vore")))
filter(msleep, sleep_total >= 16)
filter(msleep,sleep_total>=16,bodywt>=1)
filter(msleep,order%in%c("Perissodactyla","Primates"))