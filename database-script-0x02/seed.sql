INSERT INTO users (user_id, first_name, last_name, email, password_hash, role)
VALUES
  ('uuid-1', 'Alice', 'Smith', 'alice@example.com', 'hashedpass1', 'guest'),
  ('uuid-2', 'Bob', 'Jones', 'bob@example.com', 'hashedpass2', 'host');

INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('uuid-p1', 'uuid-2', 'Cozy Loft', 'Charming loft in city center', 'NYC', 150.00);

INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('uuid-b1', 'uuid-p1', 'uuid-1', '2025-06-01', '2025-06-05', 600.00, 'confirmed');

INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
  ('uuid-pay1', 'uuid-b1', 600.00, 'credit_card');

INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
  ('uuid-r1', 'uuid-p1', 'uuid-1', 5, 'Fantastic place to stay!');

INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
  ('uuid-m1', 'uuid-1', 'uuid-2', 'Hi! Is the loft available for July?');
s