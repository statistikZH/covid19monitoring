![](https://opendata.swiss/content/uploads/2016/02/kt_zh.png)

# Gesellschaftsmonitoring COVID19

# Table of Content

- [Aim](https://github.com/statistikZH/covid19monitoring/tree/master#aim) <br>
- [Gitrepos overview](https://github.com/statistikZH/covid19monitoring/tree/master#gitrepos-overview) <br>
- [Gitrepos without data protection](https://github.com/statistikZH/covid19monitoring/tree/master#gitrepos-without-data-protection) <br>
- [Gitrepos with data protection](https://github.com/statistikZH/covid19monitoring/tree/master#gitrepos-with-data-protection) <br>
- [Naming convention for gitrepos folders](https://github.com/statistikZH/covid19monitoring/tree/master#naming-convention-for-gitrepos-folders) <br>
- [Naming convention for scripts](https://github.com/statistikZH/covid19monitoring/tree/master#naming-convention-for-scripts) <br>
- [Data structure specification for csv](https://github.com/statistikZH/covid19monitoring/tree/master#data-structure-specification-for-csv) <br>
- [Naming convention for csv](https://github.com/statistikZH/covid19monitoring/blob/master/README.md#data-structure-specification-for-csv) <br>
- [README.md tempalte](https://github.com/statistikZH/covid19monitoring/tree/master#readmemd-tempalte) <br>

# Aim

In mid-March, the Statistical Office launched the project "Society Monitoring COVID19". The aim of this project is to collect indicators that help to observe how the Swiss popualation reacted to the corona crisis and the measures taken by the authorities. The indicators are published in a standarised format. From mid-June onwards, the indicators will be updated weekly on Wednesday. More informatin on this project can be found [here in german](https://www.zh.ch/de/news-uebersicht/mitteilungen/2020/politik-staat/statistik/durch-die-krise-begleiten---gesellschaftsmonitoring-covid19-.html). <br>
The following projects have a similar aim: [Konjunkturforschungsstelle (KOF ETH)](https://kof.ethz.ch/prognosen-indikatoren/indikatoren.html); [Bundesamt für Statistik (BFS)](https://www.bfs.admin.ch/bfs/de/home/aktuell/covid-19.html);  [Monitoring Consumption (HSG St Gallen)](https://public.tableau.com/profile/monitoringconsumptionswitzerland#!/)<br>

[This dashboard](https://www.web.statistik.zh.ch/covid19_indikatoren_uebersicht/#/) provides an overview of the available data. <br>

A visualization of the data is published [here](https://www.web.statistik.zh.ch/cms_vis/covid19_indikatoren/) ([Link to corresponding Observable notebook](https://observablehq.com/@mmznrstat/monitoring-covid19-effekt)).

# Gitrepos overview

| gitrepos  | responsible | validated (conforms to specs) |first published| collected until|
| ------------- | ------------- | ------------- | ------------- |------------- |
| [Other_Weather](https://github.com/statistikZH/covid19monitoring_other_Weather)  | PM | 2020-03-24 |2020-03-31|ongoing|
| [Mobility_VBZHardbruecke](https://github.com/statistikZH/covid19monitoring_mobility_VBZHardbruecke) | PM | 2020-03-30 |2020-03-31|ongoing|
| [Mobility_ZaehlstellenMIVLVVelo](https://github.com/statistikZH/covid19monitoring_mobility_ZaehlstellenMIVLVVelo) | PM | 2020-04-06 |2020-04-07|ongoing|
| [Mobility_intervista](https://github.com/statistikZH/covid19monitoring_mobility_intervista)   | PM | 2020-03-25 |2020-03-31|ongoing|
| [Economy_SMI](https://github.com/statistikZH/covid19monitoring_economy_SMI)   | PM | 2020-03-26 |2020-03-31|ongoing|
| [Economy_FlightTraffic](https://github.com/statistikZH/covid19monitoring_economy_FlightTraffic)   | BS | 2020-03-26 |2020-03-31|ongoing|
| [Economy_SIX](https://github.com/statistikZH/covid19monitoring_economy_SIX)   | BS | 2020-03-30 |2020-03-31|ongoing|
| [Health_covid19cases](https://github.com/statistikZH/covid19monitoring_health_covid19cases)   | PM | 2020-04-01 |2020-04-02|ongoing|
| [Education_lvzmath](https://bildungsmonitoringzh.github.io/covid19_edu_lmvz_public/)   | FI/KK | 2020-04-01 |2020-04-05|ongoing|
| [Education_mindsteps](https://github.com/bildungsmonitoringZH/covid19_edu_mindsteps)   | FI/KK | 2020-03-30 |2020-03-31|ongoing|
| [Economy_KOF](https://github.com/statistikZH/covid19monitoring_economy_KOF)   | PM | 2020-04-02 | 2020-04-02 |4.7.2020|
| [Mobility_SBBHauptbahnhof](https://github.com/statistikZH/covid19monitoring_mobility_SBBHauptbahnhof)  | KK | 2020-04-03 | 2020-04-03 |ongoing|
| [Social_SWISSIX](https://github.com/statistikZH/covid19monitoring_social_SWISSIX)  | KK | 2020-04-08 | 2020-04-08 |12.06.2020|
| [Education_KITA](https://bildungsmonitoringzh.github.io/covid19_edu_ajb)  | FI/KK | 2020-04-09 | 2020-04-09 |ongoing|
| [Economy_AWA](https://github.com/statistikZH/covid19monitoring_economy_AWA)  | BS | 2020-04-09 | 2020-04-09 |30.06.2020|
| [Mobility_VerkehrsmessstellenKantonZH](https://github.com/statistikZH/covid19monitoring_mobility_VerkehrsmessstellenKantonZH)  | GC/KK | 2020-04-16 | 2020-04-16 |ongoing|
| [Education_Lehrvertraege](https://github.com/bildungsmonitoringZH/covid19_edu_bista)  | FI/KK | 2020-04-16 | 2020-04-16 |ongoing|
| [Economy_Kreditkarten](https://github.com/statistikZH/covid19monitoring_economy_Kreditkarten)  | BS | 2020-04-20 | 2020-04-20 |ongoing|
| [Social_EnergieSwissgrid](https://github.com/statistikZH/covid19monitoring_social_EnergieSwissgrid)  | KK | 2020-04-22 | 2020-04-22 |12.06.2020|
| [Education_ILIAS](https://github.com/bildungsmonitoringZH/covid19_edu_phzh)  | FI/KK | 2020-04-22 | 2020-04-24 |30.06.2020|
| [Education_WikiFernlernen](https://github.com/bildungsmonitoringZH/covid19_edu_vsa)  | FI/KK | 2020-05-14 | 2020-05-14 |ongoing|
| [Economy_SHAB](https://github.com/statistikZH/covid19monitoring_economy_SHAB)  | BS |  2020-06-12 |2020-06-12 |ongoing|

**> validated**: Data is consitent with the ['Data structure specification for csv'](https://github.com/statistikZH/covid19monitoring/blob/master/README.md#data-structure-specification-for-csv). Inclusion in covid19monitoring is technically possible - the data flow works.

**> published:** Data is included in official published release.

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

> E.g.: covid19monitoring_other_Weather

## > gitrepos with data protection

covid19monitoring  + _ +   topic (start with lowercase)  + _ +  NameOfDataset (CamelCase) **+ _ + private** <br>

> E.g.:covid19monitoring_other_Weather_private

# Naming convention for scripts

topic (start with uppercase) + _ +  NameOfDataset (CamelCase) <br>

> E.g.: Other_Weather

# Naming convention for csv

topic (start with uppercase) + _ + NameOfDataset (CamelCase)

> E.g.: Other_Weather

# Data structure specification for csv

Each data output must contain the following variables in the defined standard format. Refer to the  [spreadsheet](https://docs.google.com/spreadsheets/d/e/2PACX-1vRAXE1Sahd8Gv5wiadUQrmyENCvsBhiCW1c1tGKEuXBtmPRXxvw4F-BmGDdjQcgQp7gz61qt6xw-JSk/pubhtml#) for variable definition and example.

<!---
# Template for GiHub Page

The template for our GitHub Page can be found [here](https://github.com/statistikZH/covid19monitoring/blob/master/Template_GitHubPages.Rmd). This template generates the following [GitHub Pages](https://statistikzh.github.io/covid19monitoring/). 
--->

# README.md tempalte

**Grundlage** <br>
Short description of dataset.  <br>
*Kurze Beschreibung worum es im Datensatz geht.*  

**Methodisches** <br>
Methodological notes. Analyses are explained in more detail here. (e.g.  with reference to script).   <br>
*Methodische Anmerkungen. Analysen werden hier genauer erläutert (e.v. mit Bezug auf Skript).*  <br>

**Weitere Hinweise zur Variable**  <br>
Optional. Only necessary if the description of “variable_long” is not sufficient to describe the variable.   <br>
*Fakultativ. Nur verwenden wenn die Beschreibung von “variable_long”  fürs Verständnis der Variablen nicht ausreicht.* <br>

**Weitere Informationen** <br>
[Projektseite: "Gesellschaftsmonitoring COVID19"](https://github.com/statistikZH/covid19monitoring) <br>
[Datenbezug](https://www.web.statistik.zh.ch/covid19_indikatoren_uebersicht/#/) <br>
[Visualisierung](https://www.web.statistik.zh.ch/cms_vis/covid19_indikatoren/) <br>

