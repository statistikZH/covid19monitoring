# Table of Content
- [Aim](https://github.com/statistikZH/covid19monitoring/tree/master#aim) <br>
- [Gitrepos overview](https://github.com/statistikZH/covid19monitoring/tree/master#gitrepos-overview) <br>
- [Our github procedure](https://github.com/statistikZH/covid19monitoring#our-github-procedure) <br>
- [Naming convention for scripts](https://github.com/statistikZH/covid19monitoring/tree/master#naming-convention-for-scripts) <br>
- [Naming convention for gitrepos folders](https://github.com/statistikZH/covid19monitoring/tree/master#naming-convention-for-gitrepos-folders) <br>
- [Naming convention for gitrepos folders](https://github.com/statistikZH/covid19monitoring/tree/master#naming-convention-for-scripts) <br>
- [Data structure specification for output data](https://github.com/statistikZH/covid19monitoring/tree/master#data-structure-specification-for-output-data) <br>
- [Metadata](https://github.com/statistikZH/covid19monitoring/tree/master#metadata) <br>
- [Template for GitHub Pages](https://github.com/statistikZH/covid19monitoring/blob/master/README.md#tempalte-for-github-page) <br>

# Aim
The aim is to create different datasets that all follow the same data structure. More information on the project can be found [here](https://bit.ly/2UbzLdv)

# Gitrepos overview

## Private gitrepos

| gitrepos Name  | Data ok |Plots ok|Text ok|Peter Moser ok|
| ------------- | ------------- |------------|------------|------------
| [covid19monitoring_other_Weather](https://github.com/statistikZH/covid19monitoring_other_Weather)  |   | | ||
| [covid19monitoring_mobility_PrivateTransport](https://github.com/statistikZH/covid19monitoring_mobility_PrivateTransport)   |   ||||
| [covid19monitoring_mobility_SlowTraffic](https://github.com/statistikZH/covid19monitoring_mobility_SlowTraffic)   |   ||||
| [covid19monitoring_mobility_intervista](https://github.com/statistikZH/covid19monitoring_mobility_intervista)   |   ||||
| [covid19monitoring_economy_SMI](https://github.com/statistikZH/covid19monitoring_economy_SMI)   |   ||||
| [covid19monitoring_economy_FlightTraffic](https://github.com/statistikZH/covid19monitoring_economy_FlightTraffic)   |  ||||
  
## Public gitrepos
   
| gitrepos Name | 
| ------------- | 
|  None at the moment |

**"Data ok" means**: 
-  Data follows specification of Data structure specification for output 
-  Data is validated

**"Plot ok" means**: 
-  Plot is created 
-  Plot is validated

**"Text ok" means**: 
-  Thomas Hofer has created Text

**"Peter Moser ok" means**: 
-  Non sensitive data can be publihed to public respository 

# Our github procedure 

![](methodology.jpg)

## > gitrepos with no data protection
1. Create private repository <br>
2. As soon as Peter Moser gives his ok, tranform your private repository into a public repository: 
> Settings -> Danger Zone -> Make this repository public

## > gitrepos with data protection
1. Create private repository  (named *+ _ + private*; see naming convention below) <br>
2. As soon as Peter Moser gives his ok, create a 2nd gitrepos that has the same name but without the *+ _ + private* string in the end. Here, you only copy the non-sensitive data from step 1. 

# Naming convention for gitrepos folders

## > gitrepos  with data protection
covid19monitoring  + _ +   topic (start with lowercase)  + _ +  NameOfDataset (CamelCase)<br>
> E.g.: covid19monitoring_mobility_SlowTraffic

## > gitrepos  with data protection
covid19monitoring  + _ +   topic (start with lowercase)  + _ +  NameOfDataset (CamelCase) **+ _ + private** <br>
> E.g.: covid19monitoring_mobility_SlowTraffic_private

# Naming convention for scripts

topic (start with uppercase) + _ +  NameOfDataset (CamelCase) <br>
> E.g.: Mobility_SlowTraffic

# Data structure specification for output data

**Encoding**<br>
UTF-8 <br>

**Tab separator**<br>
"," <br>

**Variables**<br>

See [thie spreadsheet](https://docs.google.com/spreadsheets/d/16bmV79jLgKt_miaFbQpSAcGBkqYA0pWXbmFviaTZUuk/edit#gid=0). 

# Metadata

The metadata is documented [here](https://docs.google.com/spreadsheets/d/1AXn18Cz-DJATHCsc_zfyHReWdK0FGjbcbLxxIgjGulg/edit#gid=2058194538).

# Tempalte for GitHub Page

The Template for our GitHub Page can be found [here](https://github.com/statistikZH/covid19monitoring/blob/master/Template_GitHubPages.Rmd). This template generates the following [GitHub Pages](https://statistikzh.github.io/covid19monitoring/). 

