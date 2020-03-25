CheckIfDfFollowsStandard <- function (df)  {
  
  # check 1: check if Variable names follow the standard
  VariableNamesStandard <- c("date",	"value",	"topic",	"variable_short",	"variable_long",	"location",	"unit",	"source",	"update",	"public",	"description")
  if(TRUE == all(sort(names(df)) == sort(VariableNamesStandard))){
  } else {
    print("variable names do not follow the defined standard: ")
    print(names(df)[!(names(df) %in% VariableNamesStandard)])
  }

  # check unique values in table
  print("*****************************************************")
  print("=> date")
  print(sort(unique(df$date)))
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
  
}


CreateMetadata <- function ()  {
  
covid19monitoring <- read.csv("./covid19monitoring.csv", header=T, sep=",", stringsAsFactors=FALSE, encoding="UTF-8")
covid19monitoring_sel <- covid19monitoring[, ! names(covid19monitoring) %in% c("date", "value")]
unique_rows <- !duplicated(covid19monitoring_sel[names(covid19monitoring_sel)])
Metadata <- covid19monitoring_sel[unique_rows,]

write.table(Metadata, "./Metadata.csv", sep=",", fileEncoding="UTF-8", row.names = F)

}