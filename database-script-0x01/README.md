# 🛠️ Airbnb Database Schema

This folder contains the SQL schema for creating the AirBnB Booking System's database structure.

- File: `schema.sql`
- Tables: Users, Properties, Bookings, Payments, Reviews, Messages
- Keys: All entities use UUID as primary keys
- Relationships: Enforced using foreign key constraints
- Indexes: Added on key lookups like email, property_id, and booking_id

# 🧪 Airbnb Sample Data Seeder

This folder contains a SQL script to insert test data into the Airbnb booking system database.

- File: `seed.sql`
- Inserts:
  - 2 users (host and guest)
  - 1 property
  - 1 booking
  - 1 payment
  - 1 review
  - 1 message
