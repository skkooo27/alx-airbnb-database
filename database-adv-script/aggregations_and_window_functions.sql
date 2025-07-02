-- Total bookings made by each user
SELECT 
    user_id,
    COUNT(*) AS total_bookings
FROM 
    Booking
GROUP BY 
    user_id;

-- Rank properties by total number of bookings using ROW_NUMBER AND RANK

SELECT 
    property_id,
    total_bookings,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS row_num
FROM (
    SELECT 
        property_id,
        COUNT(*) AS total_bookings
    FROM 
        Booking
    GROUP BY 
        property_id
) AS property_bookings;

-- Rank properties using RANK() by total number of bookings
SELECT 
    property_id,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS booking_rank
FROM (
    SELECT 
        property_id,
        COUNT(*) AS total_bookings
    FROM 
        Booking
    GROUP BY 
        property_id
) AS property_bookings;

