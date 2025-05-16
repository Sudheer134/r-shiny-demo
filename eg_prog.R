library(dplyr)
library(lubridate)
library(haven)
library(openxlsx)
library(data.table)
library(stringr)
library(tools)
library(diffdf)


prim <-  read_sas("root/xxxx/G.20161801/0033/oversight/adam/1st/prod/outdata/adam_30_12_2024/adeg.sas7bdat")
eg <- read_sas ( "root/xxxx/G.20161801/0033/clinical_data/SDTM/stable/2024-11-14/eg.sas7bdat" )
adsl <-read_sas("root/xxxx/G.20161801/0033/oversight/adam/1st/dev/outdata/surv_prog_final_stats/adsl.sas7bdat")

adsl1 <- adsl %>%
  select(USUBJID, SAFFL, TRTSDTM, TRTSDT)
eg1<- left_join(eg,adsl1, by="USUBJID",suffix = c("", "_remove")) %>%
  filter(SAFFL == "Y" ) #& EGSTAT !="NOT DONE"