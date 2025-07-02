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


-- LEFT JOIN: Retrieve all properties and their reviews, including properties without reviews
SELECT 
    Property.property_id,
    Property.name,
    Property.description,
    Property.location,
    Property.pricepernight,
    Review.review_id,
    Review.rating,
    Review.comment
FROM 
    Property
LEFT JOIN 
    Review ON Property.property_id = Review.property_id
ORDER BY 
    Property.property_id;


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
