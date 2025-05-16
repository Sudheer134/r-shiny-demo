library(dplyr)
library(lubridate)
library(haven)
library(openxlsx)
library(data.table)
library(stringr)
library(tools)
library(diffdf)


prim <-  read_sas("root/M5717/G.20161801/0033/oversight/adam/1st/prod/outdata/adam_30_12_2024/adeg.sas7bdat")
eg <- read_sas ( "root/M5717/G.20161801/0033/clinical_data/SDTM/stable/2024-11-14/eg.sas7bdat" )
adsl <-read_sas("root/M5717/G.20161801/0033/oversight/adam/1st/dev/outdata/surv_prog_final_stats/adsl.sas7bdat")