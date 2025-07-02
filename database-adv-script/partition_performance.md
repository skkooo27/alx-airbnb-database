# Partitioning Performance Report

## Why Partitioning?
The Booking table could become very large in a production app.
We partitioned it by start_date using range partitioning (by year).

## Performance Test
We ran the following query before and after partitioning:

```sql
SELECT * FROM Booking WHERE start_date BETWEEN '2025-07-01' AND '2025-07-10';
