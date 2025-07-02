# Query Optimization Report

## Initial Query:
Joined Booking, User, Property, and Payment tables to retrieve full booking details.

- Used EXPLAIN ANALYZE to identify performance issues
- Observed sequential scans and high row reads
- No filter, so entire tables scanned

## Optimization:
- Limited the query using a WHERE clause on `start_date`
- Selected only relevant columns
- Benefited from existing indexes on `booking_id`, `start_date`, `user_id`

## Result:
- Reduced execution time significantly
- Lower row count and improved index usage in EXPLAIN ANALYZE
