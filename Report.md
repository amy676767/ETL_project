# ETL_project
scraping from two generically different website: e-bay auto and cars.com to pull all listings into database by performing ETL


* **E**xtract:  
we first identified two data sources(ebay auto webiste, cars.com) to obtain data. 
To extract the key information needed from those websites by performing web scraping utilizing beautifulsoup, we first inspect the website and identifed the base url to use.

once the based url indentifed and finalized the list of key information we want to extracted from both website, below steps performed to extract:
1.  Running a loop to determine how many pages with vehicle content exist
2.  Creating a dynamic url that will update the page number in each pass of the loop until there is no vehicle content to be found
3. Instantiating a beautiful soup object to store the html 
4. using href to obtain all the listing urls and append them to a list
5. having the list of urls we could make second request to extract all the key information associated with individual car(similar to click on listing to view car' interior color, drive type etc.)
![1](https://user-images.githubusercontent.com/37135244/63665480-25ceb580-c791-11e9-9592-cebce852a8d9.JPG)



* **T**ransform: we performed data cleaning and transformation as below:
 after we extracted all the information we need from both websites by looping through individual car listing page and store the output in a list.
 we merge both output file with common ID's and making sure all the fields have a value whether or not they're populated by the sources. 
 after crete tables by following the ERD which could be find in ERD_v8.0_SQL_Script.sql, we utilized sqlalchemy to connect with postsgres and merge two file together.
 during the merging process, we stored all data in the same format and renamed all the columns since ebay and cars.com have different naming for same categorizaiton(drive type vs drivetrain for instance) 


* **L**oad: the final database, tables/collections, and why this was chosen.
after organizing the final data file, we import our data into database:
Pre-reqs: execute the setup.sql script found @ https://github.com/amy676767/ETL_project/blob/master/v1.0_create_script.sql
Username for Postgres: postgres
Password for Postgres: postgres
1.cars.com data - imported from https://github.com/amy676767/ETL_project/blob/master/Cars.ipynb
2.ebay data - imported from https://github.com/amy676767/ETL_project/blob/master/ebay_script.ipynb
with a previously prepared ERD,modified throughout the project, we organize our tables following ERD as shown below:

![image](https://user-images.githubusercontent.com/37135244/63666711-a8a63f00-c796-11e9-8323-adb821244b39.png)

after using sqlalchemy to crate tables and columns, we loaded data into db using session(details could be find in final_etl_script.ipynb)



