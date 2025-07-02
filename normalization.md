# Database Normalization – 3NF Review

To ensure the Airbnb database schema is in **Third Normal Form (3NF) by eliminating redundancy and ensuring data integrity.


1. Every table has a primary key
2. All non-key attributes are fully functionally dependent on the primary key – there are no partial dependencies.
3. There are no transitive dependencies – non-key columns do not depend on other non-key columns.


##  Conclusion
The database schema provided is already in Third Normal Form (3NF). No additional decomposition is necessary. The design ensures:
- Elimination of redundant data
- Logical structure for efficient queries
- Referential integrity between entities
