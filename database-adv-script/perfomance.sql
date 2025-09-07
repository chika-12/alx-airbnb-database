--Write an initial query that retrieves all bookings along with the user details, property details, and payment details and save it on
EXPLAIN
SELECT 
	b.id, b.booking_date, b.status,
	u.id AS user_id, u.first_name, u.last_name,
        prop.id AS property_id, prop.location, prop.property_name,
	p.user_id, p.amount, p.id AS payment_d
FROM booking b
JOIN users u On b.user_id = u.id
JOIN properties prop ON b.property_id = prop.id
LEFT JOIN payment p ON b.payment_id = p.id;
