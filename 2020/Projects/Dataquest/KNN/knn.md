## 1. Dataset
To make the dataset less cumbersome to work with, we've removed many of the columns in the original dataset and renamed the file to dc_airbnb.csv. Here are the columns we kept:

host_response_rate: the response rate of the host
host_acceptance_rate: number of requests to the host that convert to rentals
host_listings_count: number of other listings the host has
latitude: latitude dimension of the geographic coordinates
longitude: longitude part of the coordinates
city: the city the living space resides
zipcode: the zip code the living space resides
state: the state the living space resides
accommodates: the number of guests the rental can accommodate
room_type: the type of living space (Private room, Shared room or Entire home/apt
bedrooms: number of bedrooms included in the rental
bathrooms: number of bathrooms included in the rental
beds: number of beds included in the rental
price: nightly price for the rental
cleaning_fee: additional fee used for cleaning the living space after the guest leaves
security_deposit: refundable security deposit, in case of damages
minimum_nights: minimum number of nights a guest can stay for the rental
maximum_nights: maximum number of nights a guest can stay for the rental
number_of_reviews: number of reviews that previous guests have left

## 2. knn
Here's the strategy we wanted to use:

- Find a few similar listings.
- Calculate the average nightly rental price of these listings.
- Set the average price as the price for our listing.
The k-nearest neighbors algorithm is similar to this strategy. Here's an overview:
![](https://s3.amazonaws.com/dq-content/knn_infographic.png)
![](https://s3.amazonaws.com/dq-content/knn_infographic.png)

There are 2 things we need to unpack in more detail:

the similarity metric
how to choose the k value
In this mission, we'll define what similarity metric we're going to use. Then, we'll implement the k-nearest neighbors algorithm and use it to suggest a price for a new, unpriced listing. We'll use a k value of 5 in this mission. In later missions, we'll learn how to evaluate how good the suggested prices are, how to choose the optimal k value, and more.
