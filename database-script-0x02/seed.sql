-- Insert Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
('u1', 'Alice', 'Wanjiku', 'alice@example.com', 'hashed_pw1', '0712345678', 'host'),
('u2', 'Brian', 'Otieno', 'brian@example.com', 'hashed_pw2', '0722345678', 'guest'),
('u3', 'Cynthia', 'Moraa', 'cynthia@example.com', 'hashed_pw3', NULL, 'host'),
('u4', 'David', 'Kariuki', 'david@example.com', 'hashed_pw4', '0733345678', 'guest');

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
('p1', 'u1', 'Ocean View Apartment', 'A cozy sea-facing apartment.', 'Mombasa', 5000.00),
('p2', 'u3', 'Nairobi Studio', 'Modern studio near CBD.', 'Nairobi', 3500.00);

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('b1', 'p1', 'u2', '2025-07-01', '2025-07-05', 20000.00, 'confirmed'),
('b2', 'p2', 'u4', '2025-08-10', '2025-08-12', 7000.00, 'pending');

-- Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
('pay1', 'b1', 20000.00, 'paypal'),
('pay2', 'b2', 7000.00, 'credit_card');

-- Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
('r1', 'p1', 'u2', 5, 'Amazing stay with a great view!'),
('r2', 'p2', 'u4', 4, 'Clean and convenient location.');

-- Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
('m1', 'u2', 'u1', 'Hi, is the Ocean View Apartment available in August?'),
('m2', 'u1', 'u2', 'Hi! Yes, it’s available from August 10 to 20.');
