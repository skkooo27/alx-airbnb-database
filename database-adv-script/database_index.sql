-- Index on User email
CREATE INDEX idx_user_email ON User(email);

-- Index on Booking.user_id
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Index on Booking.property_id
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Index on Booking.start_date for date-based queries
CREATE INDEX idx_booking_start_date ON Booking(start_date);

-- Index on Property.location
CREATE INDEX idx_property_location ON Property(location);