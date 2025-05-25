-- Analyze query before indexing
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 42;

-- Index creation
CREATE INDEX idx_user_id ON bookings(user_id);
CREATE INDEX idx_property_id ON reviews(property_id);
CREATE INDEX idx_location ON properties(location);

-- Analyze query after indexing
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 42;
