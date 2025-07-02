-- Retrieve all bookings with user details
SELECT 
    b.booking_id,
    u.first_name,
    u.last_name,
    u.email,
    b.start_date,
    b.end_date,
    b.status
FROM 
    Booking b
INNER JOIN 
    User u ON b.user_id = u.user_id;

-- Show all properties and their reviews
SELECT 
    p.property_id,
    p.name AS property_name,
    r.review_id,
    r.rating,
    r.comment
FROM 
    Property p
LEFT JOIN 
    Review r ON p.property_id = r.property_id;

-- Simulate FULL OUTER JOIN
SELECT 
    u.user_id,
    u.first_name,
    b.booking_id,
    b.start_date
FROM 
    User u
LEFT JOIN 
    Booking b ON u.user_id = b.user_id

UNION

SELECT 
    u.user_id,
    u.first_name,
    b.booking_id,
    b.start_date
FROM 
    User u
RIGHT JOIN 
    Booking b ON u.user_id = b.user_id;
