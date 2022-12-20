--Launching of an Airbnb project in Sydney Australia
--Data cleaning (converting data type)
--Alter Table Calendar$
--Alter Column date date

--Alter Table Listings$
--Alter Column listing_id bigint

--Alter Table Reviews$
--Alter Column date date

--Drop a column 
--Alter Table Neighbourhoods$
--Drop Column f3

--Access data from all tables after data cleaning

Select * from AirBnbProject..Calendar$
Select * from AirBnbProject..Listings$
Select * from AirBnbProject..Neighbourhoods$
Select * from AirBnbProject..Reviews$

--Fetch host_id and host from the Listings table
Select HOST_ID, host from AirBnbProject..Listings$

--Fetch host_id and host from the listings table and output is sorted by host_id in descending order
Select host_id, host from AirBnbProject..Listings$
Order by host_id desc

--Fetch host_id, host from the listings table, filter data to just neighbourhood_id=35 and output is sorted by host_id in descending order
Select host_id, host from AirBnbProject..Listings$
Where neighbourhood_id = 35
Order by host_id desc

--Fetch host_id, host from the listings table, filter data to just neighbourhood_id=27 and room_type='private room' and output is sorted by host_id in descending order
Select host_id, host from AirBnbProject..Listings$
Where neighbourhood_id=27 and room_type='private room'
Order by host_id desc

--Fetch all columns from calendar table and filter the data to dates between 2022-09-09 and 2022-09-11
Select * from AirBnbProject..Calendar$
where date between '2022-09-09' and '2022-09-11'

Select * from AirBnbProject..Calendar$
Where date >= '2022-09-09' and date <='2022-09-11'

--Fetch all columns from calendar table and filter the data to dates between 2022-09-09 and 2022-09-11 and filter data to listing_id=7581665
Select * from AirBnbProject..Calendar$
Where date between '2022-09-09' and '2022-09-11' and listing_id=7581665

--Fetch all columns from calendar table and filter the data to listing_id=657377039990073984

--Alter Table Calendar$
--Alter Column listing_id bigint

Select * from AirBnbProject..Calendar$
where listing_id= 657377039990073984

--Fetch all columns from the listings table and filter listings having a price greater than or equal to 400 dollars. Order the list by price_in_dollar descendingly
Select * from AirBnbProject..Listings$
Where price_in_dollar >= 400
Order by price_in_dollar desc

--Fetch all columns from the listings table and filter listings having a price greater than or equal to 400 dollars and having neighourhood_id 20 or 26. 
--Order the list by price_in_dollar ascendingly.
Select * from AirBnbProject..Listings$
Where price_in_dollar >= 400 and (neighbourhood_id=20 or neighbourhood_id=26)
Order by price_in_dollar asc

--Fetch all columns from the reviews table and filter reviews based on listing_id:21443493, 10729688, 9012529, 46159786, and 9376988
--Sort by listing_id ascendingly.
Select * from AirBnbProject..Reviews$
where listing_id in (21443493, 10729688, 9012529, 46159786, 9376988)
Order by listing_id asc