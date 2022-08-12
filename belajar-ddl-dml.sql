MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| profil_wananda     |
| test               |
| wananda            |
+--------------------+
7 rows in set (0.002 sec)

MariaDB [(none)]> create database sekolah;
Query OK, 1 row affected (0.004 sec)

MariaDB [(none)]> use sekolah;
Database changed
MariaDB [sekolah]> create table siswa(
    -> nis char(8) PRIMARY KEY,
    -> nama varchar(100),
    -> jenis_kelamin char(1),
    -> tempat_lahir varchar(50),
    -> tanggal_lahir date,
    -> alamat text,
    -> kelas varchar(10),
    -> nilai float);
Query OK, 0 rows affected (0.083 sec)

MariaDB [sekolah]> describe siswa;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| nis           | char(8)      | NO   | PRI | NULL    |       |
| nama          | varchar(100) | YES  |     | NULL    |       |
| jenis_kelamin | char(1)      | YES  |     | NULL    |       |
| tempat_lahir  | varchar(50)  | YES  |     | NULL    |       |
| tanggal_lahir | date         | YES  |     | NULL    |       |
| alamat        | text         | YES  |     | NULL    |       |
| kelas         | varchar(10)  | YES  |     | NULL    |       |
| nilai         | float        | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
8 rows in set (0.039 sec)

MariaDB [sekolah]> show tables;
+-------------------+
| Tables_in_sekolah |
+-------------------+
| siswa             |
+-------------------+
1 row in set (0.003 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100022',
    -> 'AEF ADITIA',
    -> 'L',
    -> 'SUBANG',
    -> '2005-09-29',
    -> 'SUBANG',
    -> '11-RPL-1',
    -> '79');
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100086',
    -> 'ARIEZTO ZUCOV',
    -> 'L',
    -> 'SUBANG',
    -> '2006-12-06',
    -> 'SUBANG',
    -> '11-RPL-1',
    -> '78');
Query OK, 1 row affected (0.004 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100217',
    -> 'EBEN HEZER',
    -> 'L',
    -> 'SUBANG',
    -> '2006-10-30',
    -> 'KALIJATI',
    -> '11-RPL-1',
    -> '89');
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100095',
    -> 'ARZENNA',
    -> 'L',
    -> 'SUBANG',
    -> '2005-11-27',
    -> 'SUBANG',
    -> '11-RPL-1',
    -> '79');
Query OK, 1 row affected (0.004 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100098',
    -> 'ASEP RIZKI',
    -> 'L',
    -> 'SUBANG',
    -> '2006-07-17',
    -> 'KALIJATI',
    -> '11-RPL-1',
    -> '82');
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100053',
    -> 'ALYA ELIDHIYA',
    -> 'P',
    -> 'SUBANG',
    -> '2006-04-16',
    -> 'PAGADEN',
    -> '11-RPL-1',
    -> '85');
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100362',
    -> 'KARTIKA SARIDEWI',
    -> 'P',
    -> 'CIANJUR',
    -> '2005-09-02',
    -> 'CIJAMBE',
    -> '11-RPL-1',
    -> '88.9');
Query OK, 1 row affected (0.004 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100848',
    -> 'YUFA GINA MARYAFA',
    -> 'P',
    -> 'SUBANG',
    -> '2006-09-27',
    ->  'BINONG',
    -> '11-RPL-1',
    -> '87.6');
Query OK, 1 row affected (0.005 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100714',
    -> 'SELLY RIZKI APRILA',
    -> 'P',
    -> 'SUBANG',
    -> '2006-04-14',
    -> 'SUBANG',
    -> '11-RPL-1',
    -> '86.8');
Query OK, 1 row affected (0.004 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100778',
    -> 'TASYA AMELIA',
    -> 'P',
    -> 'SUBANG',
    -> '2006-06-14',
    -> 'SUBANG',
    -> '11-RPL-1',
    -> '87.5');
Query OK, 1 row affected (0.004 sec)

MariaDB [sekolah]>  insert into siswa values(
    -> '12100823',
    -> 'WANANDA DILLA ZAHRA',
    -> 'P',
    -> 'SUBANG',
    -> '2006-01-14',
    -> 'DAWUAN',
    -> '11-RPL-1',
    -> '89.5');
Query OK, 1 row affected (0.004 sec)

MariaDB [sekolah]> select*from siswa;
+----------+---------------------+---------------+--------------+---------------+----------+----------+-------+
| nis      | nama                | jenis_kelamin | tempat_lahir | tanggal_lahir | alamat   | kelas    | nilai |
+----------+---------------------+---------------+--------------+---------------+----------+----------+-------+
| 12100022 | AEF ADITIA          | L             | SUBANG       | 2005-09-29    | SUBANG   | 11-RPL-1 |    79 |
| 12100053 | ALYA ELIDHIYA       | P             | SUBANG       | 2006-04-16    | PAGADEN  | 11-RPL-1 |    85 |
| 12100086 | ARIEZTO ZUCOV       | L             | SUBANG       | 2006-12-06    | SUBANG   | 11-RPL-1 |    78 |
| 12100095 | ARZENNA             | L             | SUBANG       | 2005-11-27    | SUBANG   | 11-RPL-1 |    79 |
| 12100098 | ASEP RIZKI          | L             | SUBANG       | 2006-07-17    | KALIJATI | 11-RPL-1 |    82 |
| 12100217 | EBEN HEZER          | L             | SUBANG       | 2006-10-30    | KALIJATI | 11-RPL-1 |    89 |
| 12100362 | KARTIKA SARIDEWI    | P             | CIANJUR      | 2005-09-02    | CIJAMBE  | 11-RPL-1 |  88.9 |
| 12100714 | SELLY RIZKI APRILA  | P             | SUBANG       | 2006-04-14    | SUBANG   | 11-RPL-1 |  86.8 |
| 12100778 | TASYA AMELIA        | P             | SUBANG       | 2006-06-14    | SUBANG   | 11-RPL-1 |  87.5 |
| 12100823 | WANANDA DILLA ZAHRA | P             | SUBANG       | 2006-01-14    | DAWUAN   | 11-RPL-1 |  89.5 |
| 12100848 | YUFA GINA MARYAFA   | P             | SUBANG       | 2006-09-27    | BINONG   | 11-RPL-1 |  87.6 |
+----------+---------------------+---------------+--------------+---------------+----------+----------+-------+
11 rows in set (0.002 sec)

MariaDB [sekolah]> UPDATE siswa SET
    -> tempat_lahir ="JAKARTA"
    -> WHERE
    -> nis ="12100217";
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> UPDATE siswa SET
    -> alamat ="CIBOGO"
    -> WHERE
    -> nis ="12100778";
Query OK, 1 row affected (0.004 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> select*from siswa;
+----------+---------------------+---------------+--------------+---------------+----------+----------+-------+
| nis      | nama                | jenis_kelamin | tempat_lahir | tanggal_lahir | alamat   | kelas    | nilai |
+----------+---------------------+---------------+--------------+---------------+----------+----------+-------+
| 12100022 | AEF ADITIA          | L             | SUBANG       | 2005-09-29    | SUBANG   | 11-RPL-1 |    79 |
| 12100053 | ALYA ELIDHIYA       | P             | SUBANG       | 2006-04-16    | PAGADEN  | 11-RPL-1 |    85 |
| 12100086 | ARIEZTO ZUCOV       | L             | SUBANG       | 2006-12-06    | SUBANG   | 11-RPL-1 |    78 |
| 12100095 | ARZENNA             | L             | SUBANG       | 2005-11-27    | SUBANG   | 11-RPL-1 |    79 |
| 12100098 | ASEP RIZKI          | L             | SUBANG       | 2006-07-17    | KALIJATI | 11-RPL-1 |    82 |
| 12100217 | EBEN HEZER          | L             | JAKARTA      | 2006-10-30    | KALIJATI | 11-RPL-1 |    89 |
| 12100362 | KARTIKA SARIDEWI    | P             | CIANJUR      | 2005-09-02    | CIJAMBE  | 11-RPL-1 |  88.9 |
| 12100714 | SELLY RIZKI APRILA  | P             | SUBANG       | 2006-04-14    | SUBANG   | 11-RPL-1 |  86.8 |
| 12100778 | TASYA AMELIA        | P             | SUBANG       | 2006-06-14    | CIBOGO   | 11-RPL-1 |  87.5 |
| 12100823 | WANANDA DILLA ZAHRA | P             | SUBANG       | 2006-01-14    | DAWUAN   | 11-RPL-1 |  89.5 |
| 12100848 | YUFA GINA MARYAFA   | P             | SUBANG       | 2006-09-27    | BINONG   | 11-RPL-1 |  87.6 |
+----------+---------------------+---------------+--------------+---------------+----------+----------+-------+
11 rows in set (0.008 sec)

MariaDB [sekolah]> DELETE FROM
    -> siswa WHERE
    -> nis ="12100823";
Query OK, 1 row affected (0.008 sec)

MariaDB [sekolah]> select*from siswa;
+----------+--------------------+---------------+--------------+---------------+----------+----------+-------+
| nis      | nama               | jenis_kelamin | tempat_lahir | tanggal_lahir | alamat   | kelas    | nilai |
+----------+--------------------+---------------+--------------+---------------+----------+----------+-------+
| 12100022 | AEF ADITIA         | L             | SUBANG       | 2005-09-29    | SUBANG   | 11-RPL-1 |    79 |
| 12100053 | ALYA ELIDHIYA      | P             | SUBANG       | 2006-04-16    | PAGADEN  | 11-RPL-1 |    85 |
| 12100086 | ARIEZTO ZUCOV      | L             | SUBANG       | 2006-12-06    | SUBANG   | 11-RPL-1 |    78 |
| 12100095 | ARZENNA            | L             | SUBANG       | 2005-11-27    | SUBANG   | 11-RPL-1 |    79 |
| 12100098 | ASEP RIZKI         | L             | SUBANG       | 2006-07-17    | KALIJATI | 11-RPL-1 |    82 |
| 12100217 | EBEN HEZER         | L             | JAKARTA      | 2006-10-30    | KALIJATI | 11-RPL-1 |    89 |
| 12100362 | KARTIKA SARIDEWI   | P             | CIANJUR      | 2005-09-02    | CIJAMBE  | 11-RPL-1 |  88.9 |
| 12100714 | SELLY RIZKI APRILA | P             | SUBANG       | 2006-04-14    | SUBANG   | 11-RPL-1 |  86.8 |
| 12100778 | TASYA AMELIA       | P             | SUBANG       | 2006-06-14    | CIBOGO   | 11-RPL-1 |  87.5 |
| 12100848 | YUFA GINA MARYAFA  | P             | SUBANG       | 2006-09-27    | BINONG   | 11-RPL-1 |  87.6 |
+----------+--------------------+---------------+--------------+---------------+----------+----------+-------+
10 rows in set (0.001 sec)

MariaDB [sekolah]>