-- 01. Add data to oc_customer table

INSERT INTO `oc_customer` 
(`customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `password`, `custom_field`, `newsletter`, `ip`, `status`, `safe`, `commenter`, `token`, `code`, `date_added`)
VALUES
(1, 0, 1, 'Andi', 'Wijaya', 'andi.wijaya@example.com', '081234567890', 'password123', NULL, 1, '192.168.1.10', 1, 0, 0, NULL, NULL, '2025-01-01 10:00:00'),
(1, 0, 1, 'Budi', 'Santoso', 'budi.santoso@example.com', '081234567891', 'password123', NULL, 0, '192.168.1.11', 1, 0, 0, NULL, NULL, '2025-01-02 11:00:00'),
(1, 0, 1, 'Citra', 'Lestari', 'citra.lestari@example.com', '081234567892', 'password123', NULL, 1, '192.168.1.12', 1, 0, 0, NULL, NULL, '2025-01-03 12:00:00'),
(1, 0, 1, 'Dewi', 'Anggraini', 'dewi.anggraini@example.com', '081234567893', 'password123', NULL, 0, '192.168.1.13', 1, 0, 0, NULL, NULL, '2025-01-04 13:00:00'),
(1, 0, 1, 'Eko', 'Prasetyo', 'eko.prasetyo@example.com', '081234567894', 'password123', NULL, 1, '192.168.1.14', 1, 0, 0, NULL, NULL, '2025-01-05 14:00:00'),
(1, 0, 1, 'Fajar', 'Setiawan', 'fajar.setiawan@example.com', '081234567895', 'password123', NULL, 0, '192.168.1.15', 1, 0, 0, NULL, NULL, '2025-01-06 15:00:00'),
(1, 0, 1, 'Gita', 'Putri', 'gita.putri@example.com', '081234567896', 'password123', NULL, 1, '192.168.1.16', 1, 0, 0, NULL, NULL, '2025-01-07 16:00:00'),
(1, 0, 1, 'Hari', 'Nugroho', 'hari.nugroho@example.com', '081234567897', 'password123', NULL, 0, '192.168.1.17', 1, 0, 0, NULL, NULL, '2025-01-08 17:00:00'),
(1, 0, 1, 'Indah', 'Sari', 'indah.sari@example.com', '081234567898', 'password123', NULL, 1, '192.168.1.18', 1, 0, 0, NULL, NULL, '2025-01-09 18:00:00'),
(1, 0, 1, 'Joko', 'Susanto', 'joko.susanto@example.com', '081234567899', 'password123', NULL, 0, '192.168.1.19', 1, 0, 0, NULL, NULL, '2025-01-10 19:00:00'),
(1, 0, 1, 'Kiki', 'Amalia', 'kiki.amalia@example.com', '081234567800', 'password123', NULL, 1, '192.168.1.20', 1, 0, 0, NULL, NULL, '2025-01-11 09:00:00'),
(1, 0, 1, 'Lukman', 'Hakim', 'lukman.hakim@example.com', '081234567801', 'password123', NULL, 0, '192.168.1.21', 1, 0, 0, NULL, NULL, '2025-01-12 10:00:00'),
(1, 0, 1, 'Maya', 'Wulandari', 'maya.wulandari@example.com', '081234567802', 'password123', NULL, 1, '192.168.1.22', 1, 0, 0, NULL, NULL, '2025-01-13 11:00:00'),
(1, 0, 1, 'Nanda', 'Saputra', 'nanda.saputra@example.com', '081234567803', 'password123', NULL, 0, '192.168.1.23', 1, 0, 0, NULL, NULL, '2025-01-14 12:00:00'),
(1, 0, 1, 'Olivia', 'Rahma', 'olivia.rahma@example.com', '081234567804', 'password123', NULL, 1, '192.168.1.24', 1, 0, 0, NULL, NULL, '2025-01-15 13:00:00'),
(1, 0, 1, 'Putra', 'Adi', 'putra.adi@example.com', '081234567805', 'password123', NULL, 0, '192.168.1.25', 1, 0, 0, NULL, NULL, '2025-01-16 14:00:00'),
(1, 0, 1, 'Qori', 'Annisa', 'qori.annisa@example.com', '081234567806', 'password123', NULL, 1, '192.168.1.26', 1, 0, 0, NULL, NULL, '2025-01-17 15:00:00'),
(1, 0, 1, 'Rizki', 'Hidayat', 'rizki.hidayat@example.com', '081234567807', 'password123', NULL, 0, '192.168.1.27', 1, 0, 0, NULL, NULL, '2025-01-18 16:00:00'),
(1, 0, 1, 'Sinta', 'Dewi', 'sinta.dewi@example.com', '081234567808', 'password123', NULL, 1, '192.168.1.28', 1, 0, 0, NULL, NULL, '2025-01-19 17:00:00'),
(1, 0, 1, 'Teguh', 'Mahardika', 'teguh.mahardika@example.com', '081234567809', 'password123', NULL, 0, '192.168.1.29', 1, 0, 0, NULL, NULL, '2025-01-20 18:00:00');

-- 02. Display all the information of the oc_customer table.
select * from oc_customer;

--03. Display unique status from oc_customer table.
select distinct status from oc_customer;

-- Display all the unique job groups in the descending order.
SELECT DISTINCT customer_group_id
FROM oc_customer
ORDER BY customer_group_id DESC;

-- Display all the details of all active customers.
SELECT * 
FROM oc_customer
WHERE status = 1;

-- Display all the details of customers who registered before 2025-01-06
SELECT * 
FROM oc_customer
WHERE date_added < '2025-01-06';
select * from oc_customer;

-- List the customer ID, customer name, a simulated salary (using customer_id), daily salary, 
-- and annual salary of all customers, in ascending order of annual salary
SELECT customer_id,
       CONCAT(firstname, ' ', lastname) AS customer_name,
       customer_id AS sal,
       customer_id/30 AS daily_sal,
       12*customer_id AS annsal
FROM oc_customer
ORDER BY annsal ASC;

-- Display the customer ID, customer name, status, registration date, 
-- and months of experience of all active customers
SELECT customer_id,
       CONCAT(firstname, ' ', lastname) AS customer_name,
       status AS job,
       date_added,
       TIMESTAMPDIFF(MONTH, date_added, NOW()) AS exp
FROM oc_customer
WHERE status = 1;





-- Menampilkan daftar customer aktif
SELECT customer_id, firstname, lastname, email, status
FROM oc_customer
WHERE status = 1;
