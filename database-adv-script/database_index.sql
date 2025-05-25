-- Index commonly queried columns
CREATE INDEX idx_user_id ON bookings(user_id);
CREATE INDEX idx_property_id ON reviews(property_id);
CREATE INDEX idx_location ON properties(location);
