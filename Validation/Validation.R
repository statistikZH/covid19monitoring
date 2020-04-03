#Validationa

###########################################################################
#  import function

source("../function.R")

###########################################################################
# import libraries

library(readr) # Version: ‘1.3.1’
library(ggplot2) # Version: ‘3.1.0’
library(rmarkdown)

###########################################################################
# format numbers

options(scipen = 1000000)
options(digits = 6)

###########################################################################

# import data

Other_Weather <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_other_Weather/master/Other_Weather.csv")
Mobility_VBZHardbruecke <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_mobility_VBZHardbruecke/master/Mobility_VBZHardbruecke.csv")
Mobility_Intervista <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_mobility_intervista/master/Mobility_Intervista.csv")
Economy_SMI <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_economy_SMI/master/Economy_SMI.csv")
Economy_FlightTrafficZRH <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_economy_FlightTraffic/master/Economy_FlightTraffic.csv")
Economy_SIX <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_economy_SIX/master/Economy_SIX.csv")
Education_Mindmaps <- ImportUrl("https://raw.githubusercontent.com/bildungsmonitoringZH/covid19_edu_mindsteps/master/Bildung_LernplattformMindsteps.csv")
Education_LMVZ <- ImportUrl("https://raw.githubusercontent.com/bildungsmonitoringZH/covid19_edu_lmvzmath/master/Bildung_TrainingMathematik.csv?token=AO5R67TWCP3FU6EHMGONFSS6RM752")
Health_Covid19Cases <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_health_covid19cases/master/Health_covid19cases.csv?token=AJX6OIIM25TY22U7N4OKQHS6R3KX6")
Economy_KOF <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_economy_KOF/master/Economy_KOF.csv")
Mobility_SBBHauptbahnhof <- ImportUrl("https://raw.githubusercontent.com/statistikZH/covid19monitoring_mobility_SBBHauptbahnhof/master/Mobility_SBBHauptbahnhof.csv")
#mydf <- ImportUrl("")

###########################################################################
# rbind

covid19monitoring <- rbind(Other_Weather, 
                           Mobility_VBZHardbruecke, 
                           Mobility_Intervista, 
                           Economy_SMI, 
                           Economy_FlightTrafficZRH, 
                           Economy_SIX, 
                           Education_Mindmaps, 
                           Education_LMVZ, 
                           Health_Covid19Cases, 
                           Economy_KOF, 
                           Mobility_SBBHauptbahnhof)

###########################################################################
# Export

write.table(covid19monitoring, "./ValidationData.csv", sep=",", fileEncoding="UTF-8", row.names = F)

###########################################################################
# render Validation.Rmd

render("./Validation2.Rmd")

