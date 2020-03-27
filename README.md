# Table of Content

- [Aim](https://github.com/statistikZH/covid19monitoring/tree/master#aim) <br>
- [Gitrepos overview](https://github.com/statistikZH/covid19monitoring/tree/master#gitrepos-overview) <br>
- [Gitrepos with no data protection](https://github.com/statistikZH/covid19monitoring/tree/master#gitrepos-with-no-data-protection) <br>
- [Gitrepos with data protection](https://github.com/statistikZH/covid19monitoring/tree/master#gitrepos-with-data-protection) <br>
- [Naming convention for gitrepos folders](https://github.com/statistikZH/covid19monitoring/tree/master#naming-convention-for-gitrepos-folders) <br>
- [Naming convention for scripts](https://github.com/statistikZH/covid19monitoring/tree/master#naming-convention-for-scripts) <br>
- [Data structure specification for output data](https://github.com/statistikZH/covid19monitoring/tree/master#data-structure-specification-for-output-data) <br>
- [Metadata](https://github.com/statistikZH/covid19monitoring/tree/master#metadata) <br>

# Aim

The project aims at collecting daily time series in a common format about if possible all aspects of society affected by the Covid-19 Crisis. Spatially, the immediate focus is on the Canton of Zurich, contributions from all of Switzerland are nevertheless welcome. More approchable information on the project [here in german](https://statistikzh.github.io/covid19monitoring/).

# Gitrepos overview

| gitrepos  | responsible | validated (conforms to specs) |published|
| ------------- | ------------- | ------------- | ------------- |
| [covid19monitoring_other_Weather](https://github.com/statistikZH/covid19monitoring_other_Weather)  | PM | 2020-03-24 ||
| [covid19monitoring_mobility_PrivateTransport](https://github.com/statistikZH/covid19monitoring_mobility_PrivateTransport)   |   |   ||
| [covid19monitoring_mobility_SlowTraffic](https://github.com/statistikZH/covid19monitoring_mobility_SlowTraffic)   |   |   ||
| [covid19monitoring_mobility_intervista](https://github.com/statistikZH/covid19monitoring_mobility_intervista)   | PM | 2020-03-25 ||
| [covid19monitoring_economy_SMI](https://github.com/statistikZH/covid19monitoring_economy_SMI)   | PM | 2020-03-26 ||
| [covid19monitoring_economy_FlightTraffic](https://github.com/statistikZH/covid19monitoring_economy_FlightTraffic)   | BS | 2020-03-26 ||

**validated**: Data follows specification of our output table, inclusion in covid19monitoring is technically possible - the data flow works.

**published:** Data is included in official published release.

# Our github procedure 

![](methodology.jpg)
--->

# Gitrepos without data protection

1. Create private repository <br>

2. As soon as Peter Moser gives his ok, transform your private repository into a public repository: 

> Settings -> Danger Zone -> Make this repository public

# Gitrepos with data protection

1. Create private repository  (named *+ _ + private*; see naming convention below) <br>

2. As soon as Peter Moser gives his ok, create a 2nd gitrepos that has the same name but without the *+ _ + private* string in the end. Here, you only copy the non-sensitive data from step 1. 

# Naming convention for gitrepos folders

## > gitrepos without data protection

covid19monitoring  + _ +   topic (start with lowercase)  + _ +  NameOfDataset (CamelCase)<br>

> E.g.: covid19monitoring_mobility_SlowTraffic

## > gitrepos with data protection

covid19monitoring  + _ +   topic (start with lowercase)  + _ +  NameOfDataset (CamelCase) **+ _ + private** <br>

> E.g.: covid19monitoring_mobility_SlowTraffic_private

# Naming convention for scripts

topic (start with uppercase) + _ +  NameOfDataset (CamelCase) <br>

> E.g.: Mobility_SlowTraffic

# Naming convention for  output data

topic (start with uppercase) + _ + NameOfDataset (CamelCase)

# Data structure specification for output data

See [the spreadsheet](https://docs.google.com/spreadsheets/d/16bmV79jLgKt_miaFbQpSAcGBkqYA0pWXbmFviaTZUuk/edit#gid=0). 


<!---
# Template for GiHub Page

The template for our GitHub Page can be found [here](https://github.com/statistikZH/covid19monitoring/blob/master/Template_GitHubPages.Rmd). This template generates the following [GitHub Pages](https://statistikzh.github.io/covid19monitoring/). 
--->

# Metadata for gitrepos folders

**Author**: Name and Surname <br>
**Methodology**: Brief description of how the dataset is created <br>
**Dataset**: Path to dataset that is created in this gitrepos <br>
**Source**: Source of dataset <br>
**Frequency of update**: E.g. daily/weekly/monthly <br>
**Please consider these points when using the dataset**: 
Original Dataprovider (e.g. intervista, SIX, Flughafen Zürich etc.)  followed by"Gesellschaftsmonitoring Covid-19 STAT"
.<br>

