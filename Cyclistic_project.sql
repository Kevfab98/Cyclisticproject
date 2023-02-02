/* Cyclistic Data Exploration
	This Datasets were previously cleaned in Excel and now they are about to be explored using SQL queries
	There were 12 different datasets, one for each month of the year 2022
	A table was created for each dataset and then the data was imported using the COPY query
	The final TRIP2022 dataset had a total of 4,399,271 rows
*/

-- Creating a table to merge the datasets of each months data
create table trip2022 (
	ride_id	varchar(50),
	rideable_type	varchar(50),
	started_at	date,
	ended_at	date,
	start_station_name varchar(80),	
	start_station_id	varchar(80),	
	end_station_name	varchar(80),	
	end_station_id	varchar(80),	
	start_lat	numeric,
	start_lng	numeric,
	end_lat	numeric,
	end_lng	numeric,
	member_casual	varchar(50),	
	ride_length	time,
	day_of_week	integer
)

-- Importing the data from the CSV archives (This query was made for the datasets of each month)
copy trip12 (ride_id,	rideable_type,	started_at,	ended_at,	start_station_name,	start_station_id,	end_station_name,	end_station_id,	start_lat,	start_lng,	end_lat,	end_lng,	member_casual,	ride_length,	day_of_week
) from 'C:/Users/PC/Desktop/Tripdata/Excels/excel file format/final version/202212-divvy-tripdata.CSV' DELIMITER ',' CSV HEADER;


--Mergin all the datasets into one table
insert into trip2022
select * from trip12


--Looking for the average time for each rider type per day of week
select member_casual, day_of_week, avg(ride_length)
from trip2022
group by member_casual, day_of_week


--Looking for the number of rides for each rider type by day of week
select member_casual, day_of_week, count(ride_id)
from trip2022
group by member_casual, day_of_week


--Looking for the number of rides for each rider type by month of the year
select extract(month from started_at) as month, member_casual, count(ride_id)
from trip2022
group by month, member_casual


--Looking for the average time for each rider type by month of the year
select extract(month from started_at) as month, member_casual, avg(ride_length)
from trip2022
group by month, member_casual


--Looking for the number of rides for each rider type and bike type
select member_casual, rideable_type, count(ride_id)
from trip2022
group by member_casual, rideable_type


--Looking for the number of rides by season 
select case when extract(month from started_at) in (3,4,5) then 'Spring'
			when extract(month from started_at) in (6,7,8) then 'summer'
			when extract(month from started_at) in (9,10,11) then 'Autumn'
			when extract(month from started_at) in (12,01,02) then 'winter'
			end as season, count(ride_id) 
from trip2022
group by season

--Looking for the average time by season 
select case when extract(month from started_at) in (3,4,5) then 'Spring'
			when extract(month from started_at) in (6,7,8) then 'summer'
			when extract(month from started_at) in (9,10,11) then 'Autumn'
			when extract(month from started_at) in (12,01,02) then 'winter'
			end as season, avg(ride_length) 
from trip2022
group by season
