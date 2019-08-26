# ETL_project
scraping from two generically different website: e-bay auto and cars.com to help user identify and compare features of cars they would like to purchase 

##  ETL Report

* **E**xtract:  
we first identified two data sources(ebay auto webiste, cars.com) to obtain data. 
To extract the key information needed from those websites by performing web scraping utilizing beautifulsoup, we first inspect the website and identifed the base url to use.

once the based url indentifed and finalized the list of key information we want to extracted from both website, below steps performed to extract:
1.  Running a loop to determine how many pages with vehicle content exist
2.  Creating a dynamic url that will update the page number in each pass of the loop until there is no vehicle content to be found
3. Instantiating a beautiful soup object to store the html 
4. using href to obtain all the listing urls and append them to a list
5. having the list of urls we could make second request to extract all the key information associated with individual car(similar to click on listing to view car' interior color, drive type etc.)
![request results](1.jpg)


* **T**ransform: we performed data cleaning and transformation as below:
 after we extracted all the information we need from both websites by looping through individual car listing page and store the output in a list.
 we merge both output file with common ID's and making sure all the fields have a value whether or not they're populated by the sources. 
 after crete tables by following the ERD which could be find in ERD_v8.0_SQL_Script.sql, we utilized sqlalchemy to connect with postsgres and merge two file together.
 during the merging process, we stored all data in the same format and renamed all the columns since ebay and cars.com have different naming for same categorizaiton(drive type vs drivetrain for instance) 


* **L**oad: the final database, tables/collections, and why this was chosen.
after organizing the final data file, we import our data into database.
with a previously prepared ERD,modified throughout the project, we organize our tables following ERD as shown below:
![final results](2.jpg)


