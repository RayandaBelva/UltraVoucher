-- Membuat table 
CREATE TABLE master_table (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    parent_id INT
);

-- Memasukkan value berdasarkan soal
INSERT INTO master_table (id, name, parent_id)
VALUES
(1, 'Zaki', 2),
(2, 'Ilham', NULL),
(3, 'Irwan', 2),
(4, 'Arka', 3)
;

-- Menampilkan data yang diminta dalam soal
SELECT id, name, name
	(CASE
		WHEN parent_id = 2 THEN 'Ilham'
		WHEN parent_id = 3 THEN 'Irwan'
		ELSE 'NULL'
	END) AS parent_name
FROM master_tabel;