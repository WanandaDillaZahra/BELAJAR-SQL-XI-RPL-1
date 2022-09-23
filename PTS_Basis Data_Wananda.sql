A. CREATE DATABASE 'apotek_wananda';
B. CREATE TABLE `apotek_wananda`.`tb_obat` (
`kode_obat` VARCHAR(25) NOT NULL ,
`nama_obat` VARCHAR(50) NOT NULL , 
`jenis` VARCHAR(50) NOT NULL , 
`satuan` VARCHAR(50) NOT NULL , 
`stok` INT(20) NOT NULL ,
`harga_beli` INT(20) NOT NULL , 
`harga_jual` INT(20) NOT NULL , 
PRIMARY KEY (`kode_obat`)) ENGINE = InnoDB;

C. INSERT INTO `tb_obat` (`kode_obat`, `nama_obat`, `jenis`, `satuan`, `stok`, `harga_beli`, `harg_jual`) VALUES 
('K001', 'Allerin 120 cc', 'Obat Terbatas', 'Botol', '50', '20000', '22000'),
('K002', 'Becombion 110 ml', 'Obat Bebas', 'Botol', '10', '15000', '16000'),
('K003', 'Becombion 60 ml', 'Obat Bebas', 'Botol', '5', '8000', '9000'),
('K004', 'Betadine Vag Plus', 'Obat Bebas', 'Botol', '12', '12000', '13000'),
('K005', 'Komix', 'Obat Bebas', 'Lembar', '50', '4500', '5000'),
('K006', 'Diazepam', 'Obat Keras', 'Tablet', '4', '55000', '60000'),
('K007', 'CTM', 'Obat Bebas', 'Tablet', '3', '70000', '75000'),
('K008', 'Amoxicillin', 'Obat Terbatas', 'Tablet', '74', '975', '1100'),
('K009', 'Antimo', 'Obat Bebas', 'Tablet', '2', '5100', '6000'),
('K010', 'Parasetamol', 'Obat Bebas', 'Strips', '100', '3000', '4000')


1. SELECT * FROM `tb_obat` WHERE satuan = 'Botol';

2. SELECT * FROM `tb_obat` WHERE jenis = 'Obat Keras' OR jenis = 'Obat Terbatas';

3. SELECT * FROM `tb_obat` WHERE stok <50;

4. SELECT * FROM `tb_obat` WHERE satuan != 'tablet';

5. SELECT * FROM `tb_obat` WHERE jenis = 'Obat Bebas' ORDER BY harga_jual ASC;

6. SELECT * FROM `tb_obat` WHERE harga_beli BETWEEN 10000 AND 100000 AND satuan = 'Botol';

7. SELECT * FROM `tb_obat` WHERE jenis = 'Obat Bebas' AND stok >=5;

8. SELECT * FROM `tb_obat` WHERE nama_obat LIKE 'B%';

9. SELECT * FROM `tb_obat` WHERE nama_obat LIKE '%OM%';

10. SELECT jenis,SUM(stok) AS stok_total_obat FROM tb_obat GROUP BY satuan;

11. SELECT jenis,SUM(harga_jual) AS harga_jual FROM tb_obat GROUP BY jenis;

12. SELECT * FROM `tb_obat` WHERE kode_obat = 'K001' OR kode_obat = 'K003' OR kode_obat = 'K005' OR kode_obat = 'K007';

13. SELECT `kode_obat`, `nama_obat`, `jenis`, `satuan`, `stok`, `harga_beli`, `harga_jual`, (harga_beli * stok) AS total_harga_beli, (harga_jual * stok) AS total_harga_jual, (harga_jual - harga_beli) AS laba FROM `tb_obat`;

14. SELECT AVG(harga_jual) AS rata_rata FROM tb_obat WHERE satuan != 'lembar';

15. SELECT MIN(harga_beli) AS harga_terendah, MAX(harga_beli) AS harga_tertinggi FROM tb_obat;