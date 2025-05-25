-- Total bookings by user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- Rank properties by total number of bookings using RANK()
WITH booking_counts AS (
  SELECT property_id, COUNT(*) AS total_bookings
  FROM bookings
  GROUP BY property_id
)
SELECT property_id, total_bookings,
       RANK() OVER (ORDER BY total_bookings DESC) AS rank
FROM booking_counts;
