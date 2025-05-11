# 🧩 Entity-Relationship Diagram (ERD)

This document outlines the core entities, attributes, and relationships for the **AirBnB Booking Platform** backend.

## 📦 Entities and Attributes

### 🧑 User

- `user_id`: UUID, PK
- `first_name`, `last_name`: VARCHAR
- `email`: VARCHAR, UNIQUE
- `password_hash`: VARCHAR
- `phone_number`: VARCHAR (nullable)
- `role`: ENUM(`guest`, `host`, `admin`)
- `created_at`: TIMESTAMP

### 🏠 Property

- `property_id`: UUID, PK
- `host_id`: FK → User(user_id)
- `name`, `description`, `location`: VARCHAR/TEXT
- `pricepernight`: DECIMAL
- `created_at`, `updated_at`: TIMESTAMP

### 📅 Booking

- `booking_id`: UUID, PK
- `property_id`: FK → Property(property_id)
- `user_id`: FK → User(user_id)
- `start_date`, `end_date`: DATE
- `total_price`: DECIMAL
- `status`: ENUM(`pending`, `confirmed`, `canceled`)
- `created_at`: TIMESTAMP

### 💳 Payment

- `payment_id`: UUID, PK
- `booking_id`: FK → Booking(booking_id)
- `amount`: DECIMAL
- `payment_date`: TIMESTAMP
- `payment_method`: ENUM(`credit_card`, `paypal`, `stripe`)

### ⭐ Review

- `review_id`: UUID, PK
- `property_id`: FK → Property(property_id)
- `user_id`: FK → User(user_id)
- `rating`: INTEGER (1–5)
- `comment`: TEXT
- `created_at`: TIMESTAMP

### 💬 Message

- `message_id`: UUID, PK
- `sender_id`: FK → User(user_id)
- `recipient_id`: FK → User(user_id)
- `message_body`: TEXT
- `sent_at`: TIMESTAMP

## 🔗 Relationships

- **User 1↔N Booking** (A user can have many bookings)
- **Property 1↔N Booking** (A property can be booked multiple times)
- **User 1↔N Property** (A host can list multiple properties)
- **Booking 1↔1 Payment** (Each booking has one payment)
- **User 1↔N Review** (User can review multiple properties)
- **Property 1↔N Review** (Property can have many reviews)
- **User ↔ User Messages** (Users can message each other)

## 🖼️ Diagram

(Include ERD PNG from Draw.io as `ERD/airbnb-erd.png` and embed below)

![ER Diagram](airbnb-erd.png)
