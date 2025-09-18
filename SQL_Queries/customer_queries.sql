-- Menampilkan daftar customer aktif
SELECT customer_id, firstname, lastname, email, status
FROM oc_customer
WHERE status = 1;
