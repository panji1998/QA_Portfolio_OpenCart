# SQL Queries – OpenCart

Kumpulan query SQL untuk validasi data pada sistem **OpenCart Demo**.  
Database diakses menggunakan **DBeaver (MySQL)**.

---

## 1. Menampilkan daftar customer aktif
```sql
SELECT customer_id, firstname, lastname, email, status
FROM oc_customer
WHERE status = 1;
