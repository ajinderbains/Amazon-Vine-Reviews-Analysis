
#Del2- Create ine_table

CREATE TABLE vine_20
  AS (SELECT * from vine_table
	  where total_votes>=20);
	  
select * from vine_20;

#Helpful votes>50%

Create table vine_helpful_50
As(select * from vine_20
   where CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5)


Select * from vine_helpful_50;

#Vine="Y" Reviews

Create table vine_paid
As ( select * from vine_helpful_50
	where vine = 'Y');

Select * from vine_paid;

#Vine= "N" Reviews

Create table vine_unpaid
As ( select * from vine_helpful_50
	where vine = 'N');

select * from vine_unpaid;

# Total number of reviews for Paid and Unpaid reviews

Select count(review_id) 
from vine_table
where vine='N';


Select count(review_id) 
from vine_table
where vine='Y';




# Count of reviews for Star =5 Paid and unpaid 

Select count(star_rating)
from vine_table
where vine='N' and star_rating=5;


Select count(review_id) 
from vine_table
where vine='Y'and star_rating=5;

# Percentage of unpaid  5 star reviews

select ((Select cast(count(star_rating) As Float)
from vine_table
where vine='N' and star_rating=5 
			 )
		 /(
				 Select cast(count(review_id) As Float)
from vine_table
where vine='N'  ))*100;




# Percentage of paid  5 star reviews


select ((Select cast(count(star_rating) As Float)
from vine_table
where vine='Y' and star_rating=5 )
		 /( Select cast(count(review_id) As Float)
from vine_table
where vine='Y'))*100;






























































  