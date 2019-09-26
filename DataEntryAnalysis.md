## _Data Entry Analysis_

This assignment is to review observations of plankton in three different data files to identify problems/issues and to come up with proper format to collect the data for future.  

### *DataSet Problems*

-	Temperature measurement is not provided with proper unit (‘Celsius’ or ‘Fahrenheit’)
-	Values are missing in few columns like Temp, density and Colony Diameter
-	As the planktons change their distribution during day and night, both measurements are required but the time of the day is not provided.
-	The data has to be captured for the same date in both the zoop-temp and zoop-temp-main file so that it will be easy to compare.
-	In one file Depth is mentioned as Z where as in other two it is mentioned as ‘Depth’. The labeling of the column needs to be constant in all files.
-	There seems to be few negative values in the file which doesn’t make sense
-	Date format is not mentioned (MM/DD/YYYY or DD/MM/YYYY)  

### *Solution - New Table Format*


ZoomTemp

Number | Date(mm/dd/yyy) | Time(hh:mss) | Location | Depth(m) | Cuni #/L | Cuni ColonySize | Chippo #/L | Chippo ColonySize | Chla | Temperature(C) |
-------|-----------------|--------------|----------|----------|----------|:---------------:|------------|-------------------|------|----------------|
1      | 6/4/2011        | 07:15        | A        | 25       | 85       | 1.96            | 32         | 2.79              | 1.5  | 7.5           |
2      | 6/4/2011        | 21:00        | B        | 10       | 86       | 1.54            | 5          | 3.1               | 1.4  | 7.5          |


Pond  

Number | Date(mm/dd/yyy)     | Time(hh:mss) | Depth(m) | Density | Temperature(C) | Diameter | Species |
-------|---------------------|--------------|----------|---------|:--------------:|----------|---------|
1      | 6/18/2011           | 07:15        | 25       | 72      | 7.9            | 4.02     | cuni    |
2      | 6/18/2011           | 21:00        | 10       | 74      | 16.2           | 4.05     | chippo  |

