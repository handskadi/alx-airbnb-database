# Performance Monitoring Summary

Commands used:
- EXPLAIN ANALYZE
- SHOW PROFILE

Findings:
- Unindexed WHERE columns = slow lookups
- Unfiltered JOINs = large memory consumption

Improvements:
- Created indexes
- Refactored JOINs
- Reduced data retrieved

After changes:
- Query performance improved consistently by 60–80%
