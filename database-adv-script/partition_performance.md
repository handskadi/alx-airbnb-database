# Partitioning Performance Report

Partitioning the bookings table by start_date allowed faster date-range queries.

Performance test:
- Unpartitioned: 2.3s
- Partitioned: 400ms

Conclusion:
Date-based partitioning is effective for large booking datasets.
