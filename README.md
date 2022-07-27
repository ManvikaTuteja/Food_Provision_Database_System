# Food_Provision_Database_System

# Introduction

“The real road of compassion, that is, giving, helping, assistance and community service, is a road that can be set and declared as your life's purpose” -  Byron Pulsifer

According to FAO (Food and Agriculture Organization) of the United Nations, the World wastes about 1.4 billion tons of food every year and the United States has the highest share in that with a whopping 40 million tons of food wastage every year. 

The idea is to build an app that can help reduce some of this wastage by facilitating a connection between a meal provider ( someone who has a meal to share instead of wasting it ) and a meal receiver ( could be someone who doesn’t know how to cook, can’t afford it, etc ). The app user can be either a meal provider or a meal receiver, he/she will have been given a unique ID while making an account on the app. The user will also be required to feed in fields such as Name, Email, DOB, Contact information, and Address. 

Coming to the meal provider, there are two kinds of meal providers - an individual or a restaurant. Talking about an individual meal provider,  in addition to the information as an app user, each meal provider will be identified using a unique Provider ID, he/she must provide details of the meal whenever he/she wants to add a meal on the app. These details include the number of servings, location for pickup, and time frame for pickup. Location here does not mean the meal provider’s address, the provider may or may not be comfortable sharing the address with other users of the app. The location could be any place that the meal provider is comfortable handing the meal over at (it could be said Northeastern University, a T stop, etc). On the other hand, a restaurant must indicate the same but here the location would be that of the restaurant and the time window would by default be after the operating hours so that the meal receiver does not clash with any customers. 

Coming to the meal, since the idea is to reduce food wastage, there will be no cost of the meal. However, there will be a packing or service fee that the provider will charge. In addition, the meal will have a unique order number and also will mention what category it belongs to - Vegetarian, Non-vegetarian - exactly what meat, Vegan and will also mention if it's gluten-free, dairy-free, nuts free.

The meal receiver, in addition to the app user details, will indicate his/her food preferences similar to the categories under meal.

For the fact that the application is non-profitable, bringing in additional sponsors that would be willing to support the app is critical for the product to have a better life cycle. The huge installation would bring great advancement benefits to our potential partners. To bring in more user stickiness, sponsors will be encouraged to hand out coupons as a reward to food providers that would be willing to share food with others. In this case, sponsors will be identified by sponsor ID along with more information including sponsor name and contact information.  Coupons will also be stored in the database with a unique coupon ID to identify them; more information such as Expiry dates and additional descriptions of coupons will also be stored for the convenience of our users. Furthermore, by providing food to others, meal providers will gain reward points and use reward points to exchange for coupons. The coupons would present great appreciation to individuals or groups that are willing to step out for eliminating hunger and food waste. 

While implementing, the following rules will be followed: 
1.	Each coupon belongs to only one Sponsor Company but the Sponsor Company can have multiple coupons. 
2.	An app user can either be a Meal Provider or a Meal Receiver but not both. 
3.	A meal provider can either be an Individual or a Restaurant but not both. 
4.	Meal-Provider may or may not receive any coupons, it’s not compulsory. 
5.	A meal receiver may get many meals over time but a meal can only belong to one meal receiver at a time. 


# Conceptual Data Modeling

# EER 
<img width="493" alt="image" src="https://user-images.githubusercontent.com/93806838/181377765-967691a9-5683-4b27-8d49-e437b483f3a1.png">

# UML 

<img width="391" alt="image" src="https://user-images.githubusercontent.com/93806838/181377803-f8b41e07-583f-4b77-b910-9231cdf8c6c7.png">

# Relation Model 

APP_User(User_ID(N-NULL), Name, Email, DOB, ContactInfo, Address)
Meal_Receiver(Category, Payment, User_ID(N-NULL))
Meal_Provider(Provider_ID(N-NULL), Reward_point, User_ID(N-NULL))
Restaurant(Start_time, End_time, , Provider_ID(N-NULL))
Individual(Provider_ID(N-NULL))
Pick_Up(NumberofTaking, User_ID(N-NULL), Order_Number(N-NULL))
Provide(NumberofServings, Timeframeforpickup, Provider_ID(N-NULL), Order_Number (N-NULL))
Meal(Order_Number(N-NULL), Location, Category, Service fee)
Sponsor(Sponsor_ID(N-NULL), Sponorname, Contactinfo)
Coupon(Coupon_ID(N-NULL), ExpiryDate, Description, PointRequired, Sponsor_ID(N-NULL))
Exchange(ExchangeDateTime, Coupon_ID(N-NULL), Provider_ID(N-NULL))

# Project by - Manvika Tuteja and Fengbo Ma 

