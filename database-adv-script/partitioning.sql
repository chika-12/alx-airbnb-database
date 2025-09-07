ALTER TABLE booking RENAME TO old_booking;

CREATE TABLE booking(
	id SERIAL PRIMARY KEY,
	user_id INT NOT NULL,
	property_id INT NOT NULL,
	status VARCHAR(29),
	start_date DATE,
  CONSTRAINT fk_booking_user FOREIGN KEY (user_id) REFERENCES users(id),
  CONSTRAINT fk_booking_property FOREIGN KEY (property_id) REFERENCES properties(id)
)
PARTITION BY RANGE (start_date);

CREATE TABLE booking_2022 PARTITION OF booking
FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

CREATE TABLE booking_2023 PARTITION OF booking
FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');


