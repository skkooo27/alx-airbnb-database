-- Initial query: joins 4 tables
EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    u.first_name,
    u.last_name,
    u.email,
    p.name AS property_name,
    p.location,
    b.start_date,
    b.end_date,
    b.total_price,
    pay.amount,
    pay.payment_date
FROM 
    Booking b
JOIN 
    User u ON b.user_id = u.user_id
JOIN 
    Property p ON b.property_id = p.property_id
LEFT JOIN 
    Payment pay ON b.booking_id = pay.booking_id;

-- Optimized query with WHERE clause to limit scope
EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    u.first_name,
    p.name AS property_name,
    b.start_date,
    pay.amount
FROM 
    Booking b
JOIN 
    User u ON b.user_id = u.user_id
JOIN 
    Property p ON b.property_id = p.property_id
LEFT JOIN 
    Payment pay ON b.booking_id = pay.booking_id
WHERE 
    b.start_date >= '2025-07-01' AND b.start_date <= '2025-07-10';
