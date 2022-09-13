1. CREATE DATABASE ujian_wananda;

2. CREATE TABLE `tb_obat` (
  `kode_obat` varchar(25) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `stok` int(20) NOT NULL,
  `harga_beli` int(20) NOT NULL,
  `harga_jual` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

3. INSERT INTO `tb_obat` (`kode_obat`, `nama_obat`, `jenis`, `satuan`, `stok`, `harga_beli`, `harga_jual`) VALUES
('K001', 'Allerin 120 cc', 'Obat Terbatas', 'Botol', 50, 20000, 22000),
('K002', 'Becombion 110 ml', 'Obat Bebas', 'Botol', 10, 15000, 16000),
('K003', 'Becombion 60 ml', 'Obat Bebas', 'Botol', 5, 8000, 9000),
('K004', 'Betadine Vag Plus', 'Obat Bebas', 'Botol', 12, 12000, 13000),
('K005', 'Komik', 'Obat Bebas', 'Lembar', 50, 4500, 5000),
('K006', 'Diazepam', 'Obat Keras', 'Tablet', 4, 55000, 60000),
('K007', 'CTM', 'Obat Bebas', 'Tablet', 3, 70000, 75000),
('K008', 'Amoxcillin', 'Obat Terbatas', 'Tablet', 74, 975, 1100),
('K009', 'Antimo', 'Obat Bebas', 'Tablet', 2, 5100, 6000),
('K010', 'Paracetamol', 'Obat Bebas', 'Strips', 100, 3000, 4000);

4. SELECT * FROM `tb_obat`;

5. SELECT * FROM `tb_obat` WHERE jenis = 'obat terbatas';

6. SELECT * FROM `tb_obat` WHERE stok > 50 ORDER BY stok DESC;

7. SELECT * FROM `tb_obat` WHERE nama_obat LIKE '%Becombion%';

8. SELECT jenis, COUNT(*) AS jumlah_obat  FROM `tb_obat` WHERE jenis = 'obat bebas' GROUP BY jenis;

9. UPDATE `tb_obat` SET `stok` = '10' WHERE `tb_obat`.`kode_obat` = 'K007';

10. SELECT * FROM `tb_obat` WHERE jenis = 'obat bebas' AND satuan = 'Botol';

11. SELECT jenis, AVG(harga_beli) AS rerata_beli FROM `tb_obat` WHERE jenis = 'obat terbatas';

12. INSERT INTO `tb_obat` (`kode_obat`, `nama_obat`, `jenis`, `satuan`, `stok`, `harga_beli`, `harga_jual`) VALUES ('K011', 'Paramex', 'Obat Bebas', 'Lembar', ''4000', '5000');
                                                                                                                    
13. SELECT * FROM `tb_obat` WHERE kode_obat = 'K011';
                                                                                                                    
14. SELECT jenis, SUM(stok) as Stok_total FROM `tb_obat` GROUP BY jenis;
                                                                                                                    
15. DELETE FROM `tb_obat` WHERE kode_obat = 'K005';
                                                                                                                    
16. SELECT * FROM `tb_obat` WHERE nama_obat LIKE 'A%';
                                                                                                                    
17. SELECT satuan FROM `tb_obat` GROUP BY satuan;
                                                                                                                    
18. SELECT * FROM `tb_obat` WHERE harga_beli BETWEEN 10000 AND 25000;
                                                                                                                    
19. RENAME TABLE `ujian_wananda`.`tb_obat` TO `ujian_wananda`.`tbl_obat`;
                                                                                                                    
20. SELECT * FROM `tbl_obat` WHERE nama_obat LIKE '%mo%' AND stok > 10;
