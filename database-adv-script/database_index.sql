EXPLAIN ANALYZE
SELECT * FROM users WHERE email = 'chika@example.com';
CREATE INDEX user_by_id
ON users (email)
EXPLAIN ANALYZE
SELECT * FROM users WHERE email = 'chika@example.com';

EXPLAIN ANALYZE
SELECT * FROM booking WHERE user_id = 123
CREATE INDEX booking_user
ON booking (user_id)
EXPLAIN ANALYZE 
SELECT * FROM booking WHERE user_id = 123

EXPLAIN ANALYZE 
SELECT * FROM property WHERE location = 'lagos'
CREATE INDEX prop_location
ON property (location)
EXPLAIN ANALYZE
SELECT * FROM property WHERE location = 'lagos'

