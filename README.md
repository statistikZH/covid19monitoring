# Table of Content
- [Aim](https://github.com/statistikZH/monitoring_covid19/tree/master#aim)
- [Naming convention for scipts](https://github.com/statistikZH/monitoring_covid19/tree/master#naming-convention-for-scipts)
- [Naming convention for gitrepos folders](https://github.com/statistikZH/monitoring_covid19/tree/master#naming-convention-for-gitrepos-folders)
- [Naming convention for gitrepos folders](https://github.com/statistikZH/monitoring_covid19/tree/master#naming-convention-for-scripts)
- [Data structure specification for output data](https://github.com/statistikZH/monitoring_covid19/tree/master#data-structure-specification-for-output-data)
- [Whats already done](https://github.com/statistikZH/monitoring_covid19/tree/master#whats-already-done)
- [Script Structure](https://github.com/statistikZH/monitoring_covid19/tree/master#script-structure)
- [More Information about the project (in german)](https://github.com/statistikZH/monitoring_covid19/tree/master#More-Information-about-the-project-(in-german))
-[Tempalte for GitHub Pages]()

# Aim
The aim is to create different datasets that all follow the same data structure. 

More information on the project can be found [here](https://bit.ly/2UbzLdv)

# Naming convention for gitrepos folders
covid19monitoring  + _ +   topic (start with lowercase)  + _ +  NameOfDataset (CamelCase)<br>
>E.g.: covid19monitoring_mobility_SlowTraffic

# Naming convention for scipts
topic (start with uppercase) + _ +  NameOfDataset (CamelCase) <br>
> E.g.: Mobility_SlowTraffic

# Data structure specification for output data

**Encoding**<br>
UTF-8 <br>

**Tab separator**<br>
"," <br>

**Variables**<br>

See also [here](https://docs.google.com/spreadsheets/d/16bmV79jLgKt_miaFbQpSAcGBkqYA0pWXbmFviaTZUuk/edit#gid=0)

- **date**: POSIXct Format. Even though the granulation of the original signal data may be finer, the data for the resulting master table should be stored in POSIXct format on a daily basis. The function POSIXct() usually generates this from other input formats. E.g:<br>
> as.POSIXct(paste("25.2.2020", "00:00:00", sep=" "), format="%d.%m.%y")  
> as.POSIXct(paste("datumsvariable", "00:00:00", sep=" "), format="%d.%m.%y")	 

- **value** <br>
... - Value without thousand separator or the like  <br>
... - Decimal separator is the dot "."<br>

- **topic**: The five defined subject areas (lower case) <br>
... - economy <br>
... - social <br>
... - mobility <br>
... - health <br>
... - education <br>
... - other <br>

- **variable_short**: meaningful short name of the variable (lower case) <br>

- **variable_short**: meaningful long name of the variable (lower case) <br>

- **location**: Geographic reference <br>

- **unit**: unit of measurement <br>

- **origin**: Short reference, such as could be used in the footer of a plot <br>

- **update**: Time interval of update? baselines are values that serve as a comparative figure and do not change (e.g. from STATENT) <br>

- **public**: Can the variable OGD be set? <br>	

- **description**: if necessary, further, more detailed information  <br>

# Metadata

The metadata is documented [here](https://docs.google.com/spreadsheets/d/1AXn18Cz-DJATHCsc_zfyHReWdK0FGjbcbLxxIgjGulg/edit#gid=2058194538)

# Tempalte for GitHub Page

The Template for our GitHub Page can be found [here](https://github.com/statistikZH/covid19monitoring/blob/master/Template_GitHubPages.Rmd). This template generates the following [GitHub Pages](https://statistikzh.github.io/covid19monitoring/). 

