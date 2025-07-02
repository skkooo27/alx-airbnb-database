-- Total bookings made by each user
SELECT 
    user_id,
    COUNT(*) AS total_bookings
FROM 
    Booking
GROUP BY 
    user_id;

-- Rank properties based on total bookings
-- Rank properties by the total number of bookings
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
