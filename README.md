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
Durch die Krise begleiten: «Gesellschaftsmonitoring COVID19»
Das Statistische Amt hat am 16. März das Projekt «Gesellschaftsmonitoring COVID19» gestartet. Es hat zum Ziel, anhand verschiedener Datenreihen zu beobachten, wie die Schweizer Bevölkerung auf die Corona-Krise und die Massnahmen der Behörden reagiert. Mittlerweile liegen erste Ergebnisse vor.
Das Monitoring bündelt verschiedene, möglichst tagesaktuelle Datenreihen, welche die Entwicklungen, welche die die Corona-Krise in der Wirtschaft im sozialen oder im Mobilitätsbereich auslöst, beleuchten sollen. So geben beispielsweise die täglich aktualisierten Daten des COVID19 Mobilitätsmonitorings [Verweis auf Mitteilung im CMS] Auskunft darüber, in welchem Ausmass die Bevölkerung wegen der Verordnungen des Bundesrats ihre Tagesdistanz verringert hat. Ziel des Projekts ist es, die in Verwaltung und Wirtschaft erzeugten Datenreihen zu sammeln und in einem einheitlichen Format so rasch wie möglich öffentlich zugänglich zu machen. Dies gibt allen Interessierten einen Überblick darüber, wie sich die Bevölkerung in der aktuellen Krisensituation verhält. Ausserdem kann das Monitoring dabei helfen, die Wirksamkeit der behördlichen Massnahmen gegen die Ausbreitung des Corona-Virus' zu evaluieren.

Zusammenarbeit zwischen Staat und Privaten

Je schneller das Monitoring auf die Beine kommt, desto wertvoller ist es. Deshalb hat das Statistische Amt zahlreiche potentielle Datenhalter um Unterstützung gebeten: Andere Verwaltungsstellen, Hochschulinstitute, Firmen und engagierte Privatpersonen wurden angefragt, relevantes Datenmaterial zur Verfügung zu stellen. An dieser Stelle herzlichen Dank für die grosse Hilfsbereitschaft trotz der teils hohen Belastung durch das Tagesgeschäft in der Krise! Derzeit sind die Projektbeteiligten daran, die für das Monitoring benötigten Datenreihen zusammenzutragen, die Datenflüsse zu automatisieren und deren einheitliche, stetige Veröffentlichung auf die Beine zu stellen.

Erste Ergebnisse

Obwohl noch viel zu tun bleibt, liefert das Monitoring mittlerweile erste Ergebnisse in einem harmonisierten Datenformat. Einzelne Datenreihen sind seit kurzem in maschinenlesbarer Form verfügbar. Sie sollen nun laufend ergänzt werden. Informationen dazu sowie zum Projekt allgemein sind erhältlich unter:

Möglicher Quellenverweis: Gesellschaftsmonitoring Covid-19 STAT, Originalquelle (z.B Intervista AG, Tiefbauamt Stadt Zürich, Flughafen Zürich etc)

Kontakt für Auskünfte:

Für wissenschaftlich–fachliche Aspekte des Projekts:
Dr. Peter Moser, Stv. Amtschef Statistisches Amt des Kantons Zürich, Leiter Analysen & Studien (043 259 75 35)
Für technische Aspekte des Projekts:
Katharina Kälin, wissenschaftliche Mitarbeiterin Statistisches Amt des Kantons Zürich (043 259 75 08) 



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
-  Non sensitive data can be published to public repository 

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

For some data it might be nice to additionally prove a more compact dataset (subset) so that the data user can get a quick insight. 
Please use the following naming convention for this more compact datasets: 
Name of regular dataset (as described above) + _ + subset

# Data structure specification for output data

**Encoding**<br>
UTF-8 <br>

**Tab separator**<br>
"," <br>

**Variables**<br>
See [the spreadsheet](https://docs.google.com/spreadsheets/d/16bmV79jLgKt_miaFbQpSAcGBkqYA0pWXbmFviaTZUuk/edit#gid=0). 

# Metadata

The metadata is documented [here](https://docs.google.com/spreadsheets/d/1AXn18Cz-DJATHCsc_zfyHReWdK0FGjbcbLxxIgjGulg/edit#gid=2058194538).

# Template for GitHub Page

The template for our GitHub Page can be found [here](https://github.com/statistikZH/covid19monitoring/blob/master/Template_GitHubPages.Rmd). This template generates the following [GitHub Pages](https://statistikzh.github.io/covid19monitoring/). 

# Metadata for gitrepos folders

**Author**: Name and Surname <br>
**Methodology**: Brief description of how the dataset is created <br>
**Dataset**: Path to dataset that is created in this gitrepos <br>
**Source**: Source of dataset <br>
**Frequency of update**: E.g. daily/weekly/monthly <br>
**Please consider these points when using the dataset**: Things to consider when using this dataset.<br>


