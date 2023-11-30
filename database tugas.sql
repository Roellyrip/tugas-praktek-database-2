-- no 1
CREATE TABLE products(
id VARCHAR (10) PRIMARY KEY,
nama_produk VARCHAR(50),
jenis_produk VARCHAR(50),
harga INT (10),
stok INT (6));

DESCRIBE products;

-- no 2
INSERT INTO products (id, nama_produk, jenis_produk, harga, stok)
VALUES ('P001','Laptop ASUS','Laptop',12000000,50),
('P002','Laptop Lenovo','Laptop',20000000,46),
('P003','ROG Ally','Gaming Handhelds',13000000,35),
('P004','MSI pc Desktop','PC desktop',15000000,78),
('P005','Monitor Asrock','Monitor',7000000,60),
('P006','Laptop Razer','Laptop',90000000,5);

-- no 3
SELECT AVG harga FROM products;

SELECT * FROM products ORDER BY harga > 26166666.6667;

-- no 4
UPDATE products SET stok = 75 WHERE id='P003';

-- no 5
ALTER TABLE products ADD jumlah_jual int(5);
UPDATE products SET jumlah_jual = 3 WHERE id='P001';
UPDATE products SET jumlah_jual = 5 WHERE id='P002';
UPDATE products SET jumlah_jual = 4 WHERE id='P003';
UPDATE products SET jumlah_jual = 7 WHERE id='P004';
UPDATE products SET jumlah_jual = 6 WHERE id='P005';

SELECT SUM(jumlah_jual) FROM products where jenis_produk='Laptop';

-- no 6
SELECT * FROM products WHERE harga < 15000000 AND stok > 20;

-- no 7
SELECT * FROM products ORDER BY harga ASC;

-- no 8
DELETE FROM products WHERE stok < 10;
-- maka semua barang yang stoknya kurang dari 10 akan di hapus

-- no 9
SELECT SUM(harga*stok) FROM products;

-- no 10
ALTER TABLE products ADD discount DECIMAL(5,2);