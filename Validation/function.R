ImportUrl <- function(url_sel){
  
  df <- read.csv(url(url_sel), header=T, sep=",", stringsAsFactors=FALSE, encoding="UTF-8")
  return(df)
  
}

CheckIfDfFollowsStandard1 <- function (df)  {

  # check 1: check if variable names follow the standard
  VariableNamesStandard <- c("date",	"value",	"topic",	"variable_short",	"variable_long",	"location",	"unit",	"source",	"update",	"public",	"description")
  if(TRUE == all(sort(names(df)) == sort(VariableNamesStandard))){
    print("ok")
  } 
    else {
    print("variable names do not follow the defined standard: ")
    print(names(df)[!(names(df) %in% VariableNamesStandard)])
  }

}

CheckIfDfFollowsStandard2 <- function (df)  {
  
  
 # check2: check unique attibutes
  print("*************************************************")
  #print("=> variable_short")
  print(sort(unique(df$variable_short)))
  print("*************************************************")
  print(paste("description:", sort(unique(df$description))))
  print("-----------------------------------------------------")
  #print("=> date")
  #print(sort(unique(df$date)))
  ("-----------------------------------------------------")
  print(paste("min date:", min(df$date)))
  print(paste("max date:", max(df$date)))
  print("-----------------------------------------------------")
  print(paste("min value:", min(df$value)))
  print(paste("max value:", max(df$value)))
  print("-----------------------------------------------------")
  print(paste("topic:",  sort(unique(df$topic))))
  print("-----------------------------------------------------")
  print(paste("variable_long:",  sort(unique(df$variable_long))))
  print("-----------------------------------------------------")
  print(paste("location:",  sort(unique(df$location))))
  print("-----------------------------------------------------")
  print(paste("unit:", sort(unique(df$unit))))
  print("-----------------------------------------------------")
  print(paste("source:", sort(unique(df$source))))
  print("-----------------------------------------------------")
  print(paste("update:", sort(unique(df$update))))
  print("-----------------------------------------------------")
  print(paste("public:", sort(unique(df$public))))
  }

# CheckIfDfFollowsStandard3 <- function (df)  {
#   
#   df2 <- df[!duplicated(df[,c("variable_short", "variable_long", "unit")]), c("variable_short", "variable_long", "unit")]
#   kable(df2) %>% kable_styling(bootstrap_options = c("striped", "hover"))
#   
# }

CheckIfDfFollowsStandard3 <- function (dat)  {

  #Aufbereitung
  dat$date<-as.Date(as.POSIXct(dat$date))
  dat<-dat[order(dat$location, dat$variable_short, dat$date),]
  dat$var2<-as.factor(paste(dat$variable_short, dat$location, sep="_"))
  cons<-subset(dat, date>"01-01-2020")
  cons$variable_long<-as.factor(cons$variable_long)
  cons$variable_short<-as.factor(cons$variable_short)
  
  #Normalize indicators to mean=1, sd=1
  tscons<-with(cons, tapply(value, list(date, paste(variable_short, location, sep="@")), sum, na.rm=T))
  datte<-row.names(tscons)
  tscons<-apply(tscons, 2, scale)
  row.names(tscons)<-datte
  tscons<-reshape2::melt(tscons)
  ee<-strsplit(as.character(tscons$Var2), split="@", fixed=T)
  tscons$variable_short<-unlist(lapply(ee, FUN=function(x) x[1]))
  tscons$location<-unlist(lapply(ee, FUN=function(x) x[2]))
  tscons<-merge(tscons, unique(cons[,3:10]))
  tscons$date<-as.POSIXct(tscons$Var1)
  #tscons<-subset(tscons, date>"2019-10-01")
  
  
  for(i in unique(tscons$source))
  {
    subcons<-droplevels(subset(tscons, source==i & is.na(value)==F))
    a<-with(subcons,
            xyplot(value~as.POSIXct(date), 
                   xlim=range(subcons$date[is.na(subcons$value)==F]),
                   groups=paste(variable_long, unit, location, sep="/"), 
                   type="l", 
                   scales=list(x=list(at=seq(as.POSIXct("2020-01-06"), by="week", length=40), 
                                      labels=format(as.Date(seq(as.POSIXct("2020-01-06"), by="week", length=40)), "%d/%m"),
                                      rot=90)),
                   xlab="",
                   alpha=.7,
                   ylab="normalisierte Werte (mean=1, sd=1)",
                   auto.key=list(columns=2), 
                   panel = function(x, y, ...) {
                     panel.abline(h=seq(-10, 10, by=1), col="gray", lty="dotted")
                     panel.abline(v=seq(as.POSIXct("2020-01-06"), by="week", length=40), col="gray", lty="dotted") 
                     
                     panel.xyplot(x, y, ...)
                   }
            ))
    
    print(a)
  }
  
}

ValidationMetadata <- function ()  {
  
  covid19monitoring <- read.csv("./ValidationData.csv", header=T, sep=",", stringsAsFactors=FALSE, encoding="UTF-8")
  covid19monitoring_sel <- covid19monitoring[, ! names(covid19monitoring) %in% c("date", "value")]
  unique_rows <- !duplicated(covid19monitoring_sel[names(covid19monitoring_sel)])
  Metadata <- covid19monitoring_sel[unique_rows,]
  Metadata$last_modified <- Sys.Date()
  write.table(Metadata, "./ValidationMetadata.csv", sep=",", fileEncoding="UTF-8", row.names = F)
  
}

CreateMetadata <- function ()  {
  
  covid19monitoring <- read.csv("./covid19socialmonitoring.csv", header=T, sep=",", stringsAsFactors=FALSE, encoding="UTF-8")
  covid19monitoring_sel <- covid19monitoring[, ! names(covid19monitoring) %in% c("date", "value")]
  unique_rows <- !duplicated(covid19monitoring_sel[names(covid19monitoring_sel)])
  Metadata <- covid19monitoring_sel[unique_rows,]
  Metadata$last_modified <- Sys.Date()
  write.table(Metadata, "./Metadata.csv", sep=",", fileEncoding="UTF-8", row.names = F)

}