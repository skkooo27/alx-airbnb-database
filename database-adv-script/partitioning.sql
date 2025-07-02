-- Create the main partitioned table
DROP TABLE IF EXISTS Booking CASCADE;

CREATE TABLE Booking (
    booking_id UUID PRIMARY KEY,
    property_id UUID,
    user_id UUID,
    start_date DATE,
    end_date DATE,
    total_price DECIMAL,
    status TEXT,
    created_at TIMESTAMP
) PARTITION BY RANGE (start_date);

-- Create partitions (e.g., per year)
CREATE TABLE Booking_2024 PARTITION OF Booking
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE Booking_2025 PARTITION OF Booking
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Run a query to check performance
EXPLAIN ANALYZE
SELECT * FROM Booking
WHERE start_date BETWEEN '2025-07-01' AND '2025-07-10';
