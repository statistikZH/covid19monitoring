CheckIfDfFollowsStandard1 <- function (df)  {
  
  # check 1: check if Variable names follow the standard
  VariableNamesStandard <- c("date",	"value",	"topic",	"variable_short",	"variable_long",	"location",	"unit",	"source",	"update",	"public",	"description")
  if(TRUE == all(sort(names(df)) == sort(VariableNamesStandard))){
  } else {
    print("variable names do not follow the defined standard: ")
    print(names(df)[!(names(df) %in% VariableNamesStandard)])
  }

  # check unique values in table
  print("*****************************************************")
  #print("=> date")
  #print(sort(unique(df$date)))
  print("*****************************************************")
  #print("=> value")
  #print(sort(unique(df$value)))
  print("*****************************************************")
  print("=> topic")
  print(sort(unique(df$topic)))
  print("*****************************************************")
  print("=> variable_short")
  print(sort(unique(df$variable_short)))
  print("*****************************************************")
  print("=> variable_long")
  print(sort(unique(df$variable_long)))
  print("*****************************************************")
  print("=> location")
  print(sort(unique(df$location)))
  print("*****************************************************")
  print("=> unit")
  print(sort(unique(df$unit)))
  print("*****************************************************")
  print("=> source")
  print(sort(unique(df$source)))
  print("*****************************************************")
  print("=> update")
  print(sort(unique(df$update)))
  print("*****************************************************")
  print("=> public")
  print(sort(unique(df$public)))
  print("*****************************************************")
  print("=> description")
  print(sort(unique(df$description)))
  print("*****************************************************")
  print("=> variable_short, variable_long, unit")
  
}

CheckIfDfFollowsStandard2 <- function (df)  {
  
  df2 <- df[!duplicated(df[,c("variable_short", "variable_long", "unit")]), c("variable_short", "variable_long", "unit")]
  kable(df2) %>% kable_styling(bootstrap_options = c("striped", "hover"))
  
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