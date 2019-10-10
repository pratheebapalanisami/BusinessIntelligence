## Data Exploration - Jean Lafitte National Historical Park & Preserve

#### 1. Scatterplot of Phenophase Category and mean first YES observation

![Plot1](https://github.com/pratheebapalanisami/Data-To-Decisons/blob/master/Data%20Exploration/Rplot_ScatterPlot_Phenophase_Category.png)

> dataexp %>% filter(Median_First_Yes_DOY!=-9999) %>% ggplot(aes(x=Mean_First_Yes_DOY, y=Phenophase_Category)) +
geom_point()

#### 2. Scatterplot of Species and mean first YES observation

![Plot2](https://github.com/pratheebapalanisami/Data-To-Decisons/blob/master/Data%20Exploration/Rplot_ScatterPlot_Species_Kingdom.png)

> dataexp %>% filter(Median_First_Yes_DOY!=-9999) %>% ggplot(aes(x=Mean_First_Yes_DOY, y=Species,color = Kingdom)) +
geom_point()

#### 3. Facted plot of Genus and mean first YES observation split with Site Name

![Plot3](https://github.com/pratheebapalanisami/Data-To-Decisons/blob/master/Data%20Exploration/Rplot_Facted%20Plot.png)

> dataexp %>% filter(Mean_First_Yes_DOY!=-9999) %>% ggplot(aes(x=Mean_First_Yes_DOY, y=Genus)) +
geom_point() +
facet_grid(~Site_Name)

#### 4. Bar chart of Site Name and mean first YES observation 

![Plot4](https://github.com/pratheebapalanisami/Data-To-Decisons/blob/master/Data%20Exploration/Rplot_BarChart.png)

> dataexp %>% filter(dataexp$Mean_First_Yes_Year != -9999) %>% ggplot(aes(x = Site_Name, fill = Mean_First_Yes_Year)) +
geom_bar(stat = "count", position = position_dodge()) +
geom_text(stat="count", aes(label=..count..), vjust = 1.6, color="white", size=3, position = position_dodge(1)))

#### 5. Scatterplot of Species and Phenophase Category with Kingdom variation

![Plot5](https://github.com/pratheebapalanisami/Data-To-Decisons/blob/master/Data%20Exploration/Rplot_ScatterPlot_Kingdom.png)

> dataexp %>% filter(Median_First_Yes_DOY!=-9999) %>% ggplot(aes(x=Phenophase_Category, y=Species,color = Kingdom)) +
geom_point()










