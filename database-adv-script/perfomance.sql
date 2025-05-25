-- Analyze performance before optimization
EXPLAIN
SELECT b.id, u.first_name, u.email, p.title, pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE b.status = 'confirmed' AND pay.amount > 0;
