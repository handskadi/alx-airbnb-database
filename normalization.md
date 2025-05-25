# ✅ Database Normalization to 3NF

## 🎯 Goal

Ensure the AirBnB schema is normalized to **Third Normal Form (3NF)**.

---

## 🔍 Step-by-step Normalization

### 🔹 1NF – Eliminate Repeating Groups

- All attributes are atomic (no multivalued fields).
- All tables have primary keys.

✅ Already satisfied.

---

### 🔹 2NF – Remove Partial Dependencies

- No non-key attribute is dependent on part of a composite key.

✅ All tables use UUIDs as single-column primary keys. Satisfied.

---

### 🔹 3NF – Remove Transitive Dependencies

- No non-key attribute depends on another non-key attribute.

✅ All attributes depend only on the primary key (e.g., `email`, `role`, etc. are directly tied to `user_id`).

---

## ✅ Summary

The schema is in **Third Normal Form (3NF)**. It ensures:

- Data integrity
- Avoids redundancy
- Improves scalability and maintenance
