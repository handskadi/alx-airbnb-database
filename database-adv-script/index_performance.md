# Indexing Performance Report

Before indexing:
- Queries on bookings.user_id and reviews.property_id were slow.
- Full table scans observed in EXPLAIN output.

After indexing:
- Significant drop in query time (800ms → 150ms).
- Query planner now uses indexes for JOINs.

Conclusion:
Proper indexing improved performance drastically.
