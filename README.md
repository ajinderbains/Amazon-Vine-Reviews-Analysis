# Amazon Vine Reviews Analysis

## Overview

The Amazon Vine program is a service that allows manufacturers and publishers to receive reviews for their products.Companies like SellBy pay a small fee to Amazon and provide products to Amazon Vine members, who are then required to publish a review.So we will analyze "Pet Product" reviews file from Amazon  to determine if there is any bias toward favorable reviews from Vine members in  dataset. So we will find the answers for following:
1. Total Reviews
2. Total 5 Star reviews
3. Total count for paid reviews 
4. Total count for unpaid reviews 
5. Total count for paid  5 star reviews 
6. Total count for unpaid 5 star reviews 
7. Percentage of paid  5 star reviews
8. Percentage of unpaid  5 star reviews

## Results

[notebook](https://github.com/ajinderbains/Amazon-Vine-Reviews-Analysis/blob/main/Amazon_Reviews_ETL.ipynb) will transfer Pet Products review  dataset into dataframes and upload the data in database and [sqlfile]() will help us find the answers for questions mentioned in overeview.

- There are **10215 paid** reviews and **2633399 unpaid** reviews.

### Paid Reviews
![chart1](https://github.com/ajinderbains/Amazon-Vine-Reviews-Analysis/blob/main/images/review_paid.PNG)
### Unpaid Reviews
![chart2](https://github.com/ajinderbains/Amazon-Vine-Reviews-Analysis/blob/main/images/review_unpaid.PNG)

- There are **4343 paid** 5 star reviews and **1641210 unpaid** 5 star reviews.

### Paid 5 Star Reviews
![chart3](https://github.com/ajinderbains/Amazon-Vine-Reviews-Analysis/blob/main/images/star5_paid.PNG)
### Unpaid 5 Star Reviews
![chart4](https://github.com/ajinderbains/Amazon-Vine-Reviews-Analysis/blob/main/images/star5_unpaid.PNG)

- Percentage for paid 5 star reviews is around  **0.16%**   and **62%** for  unpaid 5 reviews. 

### Paid Reviews
![chart5]()
### Unpaid Reviews
![chart6]()

## Summary
As it is clear from the results there is no bias found in our analysis,following are results which support our findings
 - The number of reviews is much less than the unpaid reviews, **10215 paid reviews and 2633399 unpaid reviews**.
 - The  number of 5 star  reviews is much less than the unpaid 5 star reviews,  **4343 paid and 1641210 unpaid 5 star reviews**.
 - The percentage for 5 star paid reviews is less than 1% (**0.16%** to be exact) and **62%** for  unpaid 5 reviews.

In addition to this I will also include the helpful votes count and will also inclide following in further investigation.
 - Paid Reviews
 - Unpaid Reviews
 - Verified Purchase--it is very important to verify if review came from actual product user.
