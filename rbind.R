#https://rpubs.com/lokraj/github_csv

#url_Economy_FlightTrafficZRH="https://github.com/statistikZH/covid19monitoring_economy_FlightTraffic/blob/master/Economy_FlightTrafficZRH.csv"
#Economy_FlightTrafficZRH<-data.frame(read_csv(url(url_Economy_FlightTrafficZRH)))

 
# url_Test= "https://raw.githubusercontent.com/statistikZH/monitoring_covid19/master/data_monitoring_covid_19.csv"
# Test<-data.frame(read_csv(url(url_Test)))
# View(Test)

source("/home/klk/Documents/gitrepos/function.R")
t <- read_csv("/home/klk/Downloads/DummyTable.csv")
tt <- t %>% rename(apple = date)
CheckIfDfFollowsStandard(t)
CheckIfDfFollowsStandard(tt)


