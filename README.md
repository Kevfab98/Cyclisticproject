#Cyclistic Project

In this analysis, we will handle the data of the company Cyclistic in the year 2022. This data includes the number of rides, the start and end date and time of each ride, and the station, and station id.

This data was divided into 12 datasets, one for each month of the year.

The first step was to clean each dataset in Excel, we remove all the blank spaces, set the columns in the right format, and perform calculations such as the day of the week of each ride and the duration time.
![Picture1](https://user-images.githubusercontent.com/113483652/216459467-2f7bd6d0-6c74-4671-a20c-e63fb3f1ad08.png)

Then we imported all the dataset to PostgreSQL and merged them all into one single table with more than 4 million rows.

After mergin all the datasets we continue doing some data exploration and analysis runing some querys on the data.
![sql](https://user-images.githubusercontent.com/113483652/216460267-b853c8ee-d731-4bb0-8225-ba7cc7400f87.png)

Once we had the analysis done in SQL, we move the resolt to Tableau to elaborate some data visualization with the data.
![dataviz](https://user-images.githubusercontent.com/113483652/216460742-6be288da-fe68-45c5-850a-3fcf731372af.png)

After perfoming the analysis and the data visualiztions, we reach to the follogin conclusions: 

 - Member riders use Cyclistic as a means of transportation, in other words, they use it to move from their home to their work or another destination. 
 - Casual riders use Cyclistic recreationally, in other words, they use bikes to have some fun or as a casual activity.
 - Both types of riders use more Cyclistic during the summer because of the cold temperatures during the winter.
 
 And with those conclusions we give these recomendations:
 
 - A Summer Membership: as we saw in the analysis the usage of casual members skyrockets during the summer so creating a new type of membership for the summer will catch
 the attention of casual riders.
 
 - Weekend Membership: the analysis also shows that casual riders use Cyclistic more during the weekend, so a membership for the weekend will be the perfect option for casual riders that enjoy recreative rides. 
