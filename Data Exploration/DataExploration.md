## Data Exploration - Jean Lafitte National Historical Park & Preserve

In the dataset, I observed there are missing values coded as -9999 for 'Mean_First_Yes_DOY' column. Since this will skew the results, I filtered them out from the dataset using the below code snippet.

> dataexp %>% filter(Mean_First_Yes_DOY!=-9999) %>%

#### 1. Scatterplot of Phenophase Category and mean first YES observation

![Plot1](https://github.com/pratheebapalanisami/Data-To-Decisons/blob/master/Data%20Exploration/Rplot_ScatterPlot_Phenophase_Category.png)

> dataexp %>% filter(Median_First_Yes_DOY!=-9999) %>% ggplot(aes(x=Mean_First_Yes_DOY, y=Phenophase_Category)) +
geom_point()

**Observation** - The bird activity is observed only between 100th to 175th days of a year. We can understand the birds that were observed as part of this exercise in Los Angeles are very active during the Spring months.
As per data, Pollen Cones were observed in the first 100 days of the year.
The pattern observed among Leaves, Fruits, and Flowers are similar with a very high occurrence between 50 to 100 days and 250 to 300 days of the year which means during beginning of Winter and end of Winter season.

#### 2. Scatterplot of Species and mean first YES observation

![Plot2](https://github.com/pratheebapalanisami/Data-To-Decisons/blob/master/Data%20Exploration/Rplot_ScatterPlot_Species_Kingdom.png)

> dataexp %>% filter(Median_First_Yes_DOY!=-9999) %>% ggplot(aes(x=Mean_First_Yes_DOY, y=Species,color = Kingdom)) +
geom_point()

**Observation** - Americana species fall under both Animalia and Plantae Kingdom where Animalia is observed only between 125 to 175 days of the year. The most observed Plantae species is Radicans. It occurs predominantly between 50 to 150 days of years which is end of winter to end of spring season.

#### 3. Facted plot of Genus and mean first YES observation split with Site Name

![Plot3](https://github.com/pratheebapalanisami/Data-To-Decisons/blob/master/Data%20Exploration/Rplot_Facted%20Plot.png)

> dataexp %>% filter(Mean_First_Yes_DOY!=-9999) %>% ggplot(aes(x=Mean_First_Yes_DOY, y=Genus)) +
geom_point() +
facet_grid(~Site_Name)

**Observation** - Bayou Coquille and ring levee trials have more observations when compared to other trials.
Genus Verbesina is observed only in the Visitor center trial. Likewise Gleditisia is observed only in RIng Levee trial.

#### 4. Bar chart of Site Name and mean first YES observation 

![Plot4](https://github.com/pratheebapalanisami/Data-To-Decisons/blob/master/Data%20Exploration/Rplot_BarChart.png)

> dataexp %>% filter(dataexp$Mean_First_Yes_Year != -9999) %>% ggplot(aes(x = Site_Name, fill = Mean_First_Yes_Year)) +
geom_bar(stat = "count", position = position_dodge()) +
geom_text(stat="count", aes(label=..count..), vjust = 1.6, color="white", size=3, position = position_dodge(1)))

**Observation** - If we compare between all sites, 2018 is the year with most number of observations.
If we compare all sites in 2017, trials Palmetto, Ring levee and Visitor center has an equal number of observations whereas Bayou Coquille has a high number of observations.

#### 5. Scatterplot of Species and Phenophase Category with Kingdom variation

![Plot5](https://github.com/pratheebapalanisami/Data-To-Decisons/blob/master/Data%20Exploration/Rplot_ScatterPlot_Kingdom.png)

> ggplot(data = dataexp) +
geom_point(mapping = aes(x=Phenophase_Category, y=Species,color = Kingdom))

**Observation** - Reproduction is observed only for Citrea species. Distichum is the only species observed with Needles, Pollen Cones and Seed Cones Phenophase category.











