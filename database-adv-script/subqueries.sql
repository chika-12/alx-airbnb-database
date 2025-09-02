SELECT * FROM properties WHERE id IN ( SELECT property_id FROM reviews GROUP BY property_id HAVING AVG(ratings) > 4.0);

--Write a correlated subquery to find users who have made more than 3 bookings.
SELECT * FROM users u  WHERE (SELECT COUNT(*) FROM bookings b WHERE b.user_id = u.id) > 3;
