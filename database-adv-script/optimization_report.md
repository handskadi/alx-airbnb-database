# Optimization Report

Initial query retrieved full rows and used multiple JOINs.

Steps taken:
- Limited SELECT fields to necessary columns
- Indexed foreign key columns
- Filtered data earlier (WHERE before JOIN)

Result:
- Execution time improved from 1.4s to ~300ms
