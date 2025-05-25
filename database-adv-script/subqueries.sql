-- INNER JOIN: bookings and users
SELECT b.*, u.*
FROM bookings b
INNER JOIN users u ON b.user_id = u.id
ORDER BY b.id;

-- LEFT JOIN: properties and reviews
SELECT p.*, r.*
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id
ORDER BY p.id;

-- FULL OUTER JOIN: users and bookings
SELECT u.*, b.*
FROM users u
FULL OUTER JOIN bookings b ON u.id = b.user_id
ORDER BY u.id;

-- Properties with avg rating > 4.0
SELECT id, title
FROM properties
WHERE id IN (
  SELECT property_id
  FROM reviews
  GROUP BY property_id
  HAVING AVG(rating) > 4.0
);

-- Users with more than 3 bookings (correlated)
SELECT *
FROM users u
WHERE (
  SELECT COUNT(*)
  FROM bookings b
  WHERE b.user_id = u.id
) > 3;
