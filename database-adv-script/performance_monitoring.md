# Performance Monitoring Report

 Tools Used
- PostgreSQL command: `EXPLAIN ANALYZE`

We monitored common queries from our Airbnb database to identify and fix performance issues. Indexes were added, and queries were optimized based on `EXPLAIN ANALYZE` result

 Query 1: Join Booking + User + Property

SQL
```sql
EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    u.email,
    p.name
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id;
