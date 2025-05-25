-- Total bookings by user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- Rank properties by bookings using RANK()
SELECT property_id,
       COUNT(*) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS rank
FROM bookings
GROUP BY property_id;
