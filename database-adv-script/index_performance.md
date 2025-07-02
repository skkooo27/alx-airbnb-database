# Index Performance Report

## Created Indexes
- User.email: speeds up login/user lookup
- Booking.user_id and Booking.property_id: used in frequent JOINs
- Booking.start_date: speeds up date range filters
- Property.location: helps with city-based searches

## Performance Testing
Used EXPLAIN to test before and after adding indexes.

Example:

sql
EXPLAIN SELECT * FROM Booking WHERE start_date BETWEEN '2025-07-01' AND '2025-07-10';



