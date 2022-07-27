USE Project;

#Query 1 
# Outstanding meal providers who have more than 90 reward points
SELECT au.Name
FROM `App user` AS au, `Meal Provider` AS MP
WHERE au.UserID = MP.UserID
AND MP.Reward_point > 90;

#Query 2
# Showing meal provider with the most reward point
SELECT au.Name
FROM `App user` AS au, `Meal Provider` AS MP
WHERE au.UserID = MP.UserID
AND MP.Reward_point = 
( select max(Reward_point) 
  from `Meal Provider` AS MP);

#Query 3
# Who are the users obtained coupon for Stop&Shop  
SELECT au.Name
FROM `App user` AS au
WHERE au.UserID IN
	(SELECT ex.UserID
	 FROM Exchange AS ex
	 WHERE ex.CouponID IN
		(SELECT cp.CouponID
        FROM Coupon AS cp
        WHERE cp.SponsorID IN
			(SELECT sp.SponsorID
			 FROM Sponsor AS sp
			 WHERE sp.SponsorName = 'Stop&Shop')));

#Query 4
# Name and DOB of users who take more than the average number of servings
SELECT au.UserID, au.Name, au.DOB
FROM `App user` AS au
WHERE au.UserID IN
    (SELECT DISTINCT(UserId)
	FROM `Pick Up` AS pu1
	WHERE EXISTS 
		(SELECT UserId
		FROM (SELECT UserId, SUM(NumberofTaking) as TotalTake
				FROM `Pick Up`
				GROUP BY UserId
				HAVING SUM(NumberofTaking)>
							(SELECT AVG(NumberofTaking)
							 FROM `Pick Up`	)) pu2
				WHERE pu1.UserID = pu2.UserID));
                
#Query 5
#Meal receivers with User ID>1010 and prefers 'Vegetarian' food 

SELECT au.UserID, au.Name, MR.Category
FROM `App user` AS au
INNER JOIN `Meal Receiver` as MR  
ON au.UserID = MR.UserID
WHERE au.UserID > 1010
AND MR.Category = 'Vegatarian';

#Query 6
#Meal Providers with ProviderID > 2070 and with time frame for pick up as 19:00

SELECT au.Name
FROM `App user` AS au
WHERE au.UserID IN
	(SELECT MP.UserID
	 FROM `Meal Provider` AS MP
	 WHERE MP.ProviderID IN
		(SELECT P.ProviderID
        FROM `Provide` AS P
        WHERE P.ProviderID > 2070 
        AND P.TimeFrametoPickUp = '19:00'));

#Query 7
#Names of App users with UserID> 1020 and having 'a' as the last digit of their name 
SELECT au.Name
FROM `App user` AS au
WHERE au.UserID >1020
AND au.Name 
LIKE '%a';


