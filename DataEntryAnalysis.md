## _Data Entry Analysis_

This assignment is to review observations of plankton in three different data files to identify problems/issues and to come up with proper format to collect the data in future.  

### *DataSet Problems*

-	Temperature measurement is not provided with proper unit (‘Celsius’ or ‘Fahrenheit’)
-	Values are missing in few columns like Temp, density and Colony Diameter
-	As the planktons change their distribution during day and night, both measurements are required but the time of the day is not provided.
-	The data captured in both the zoop-temp and zoop-temp-main file are with the same column expect for the fact that they are captured in different location.
-	In one file Depth is mentioned as Z where as in other two it is mentioned as ‘Depth’. The labeling of the column needs to be constant in all the files.
-	There seems to be few negative values in the file which doesn’t make sense
-	Date format is not mentioned (MM/DD/YYYY or DD/MM/YYYY)  

### *Solution - New Table Format*


**ZoopTemp**

Number | Date(mm/dd/yyy) | Time(hh:mss) | Location | Depth(m) | Cuni #/L | Cuni ColonySize | Chippo #/L | Chippo ColonySize | Chla | Temperature(C) |
-------|-----------------|--------------|----------|----------|----------|:---------------:|------------|-------------------|------|----------------|
1      | 6/4/2011        | 07:15        | A        | 25       | 85       | 1.96            | 32         | 2.79              | 1.5  | 7.5           |
2      | 6/4/2011        | 21:00        | B        | 10       | 86       | 1.54            | 5          | 3.1               | 1.4  | 7.5          |
3      | 6/9/2011        | 15:00        | B        | 20       | 73       | 2.5             | 16         | 1.9               | 2.4  | N/A          |


**Pond**

Number | Date(mm/dd/yyy)     | Time(hh:mss) | Depth(m) | Density | Temperature(C) | Diameter | Species |
-------|---------------------|--------------|----------|---------|:--------------:|----------|---------|
1      | 6/18/2011           | 07:15        | 25       | 72      | 7.9            | 4.02     | cuni    |
2      | 6/18/2011           | 21:00        | 10       | 74      | 16.2           | 4.05     | chippo  |  


- Unit for temperature measurement is added (Celsius).
- Mark as 'N/A' for the missing values and for negative values.
- Time column is added to identify the day and night of the day.
- zoop-temp and zoop-temp-main are merged into single file adding the location column to it.
- 'Z' column in pond is replaced with 'Depth' with proper unit.
- Date format is mentioned in both the tables and are consistent across both.
