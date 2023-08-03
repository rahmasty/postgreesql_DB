CREATE TABLE Admin (
    id_admin VARCHAR(10) PRIMARY KEY,
    username_admin VARCHAR(50),
    pass_admin VARCHAR(50)
);

CREATE TABLE Pelanggan (
    id_pelanggan VARCHAR(10) PRIMARY KEY,
    nama_pelanggan VARCHAR(100),
    tlp_pelanggan VARCHAR(20),
    alamat TEXT
);

CREATE TABLE Mobil (
    id_mobil VARCHAR(10) PRIMARY KEY,
    merk_mobil VARCHAR(100),
    warna_mobil VARCHAR(20)
);

CREATE TABLE Transaksi (
    id_transaksi VARCHAR(10) PRIMARY KEY,
    id_pelanggan VARCHAR(10),
    id_mobil VARCHAR(10),
    nama_pelanggan VARCHAR(100),
    nama_mobil VARCHAR(100),
    tgl_pinjam DATE,
    tgl_kembali DATE,
    harga_sewa DECIMAL(12, 2),
    FOREIGN KEY (id_pelanggan) REFERENCES Pelanggan (id_pelanggan),
    FOREIGN KEY (id_mobil) REFERENCES Mobil (id_mobil)
);

--record admin
INSERT INTO Admin (id_admin, username_admin, pass_admin) VALUES 
('A001', 'ysr', 'iniapel'),
('A002', 'rhmsty', 'apelmanis'),
('A003', 'setyo', 'bajumerah'),
('A004', 'rini', 'hp0987'),
('A005', 'kevin', 'maksudlo'),
('A006', 'miya', 'login12'),
('A007', 'layla', '12345'),
('A008', 'gusion', 'assasin'),
('A009', 'yudis', 'fauzi12'),
('A010', 'selena', 'mage');

SELECT * FROM Admin;

--record pelanggan
INSERT INTO Pelanggan (id_pelanggan, nama_pelanggan, tlp_pelanggan, alamat) VALUES 
('P001', 'Rahmawati', '081234567890', 'Jalan Raya No. 123'),
('P002', 'Lusiana', '081234567888', 'Jalan Kali No. 112'),
('P003', 'John', '081234567678', 'Jalan Kelapa No. 12'),
('P004', 'Calvin Klein', '081234567567', 'Jalan Sunan Muria No. 9'),
('P005', 'Taylor Swift', '081234567456', 'Jalan Ahmad No. 78'),
('P006', 'Jennie', '081234567956', 'Jalan Duren No. 878'),
('P007', 'Tom Cruise', '081234567345', 'Jalan Rambutan No. 3'),
('P008', 'Jones', '081234567786', 'Jalan Hamengkubuwono No. 67'),
('P009', 'Lucy', '081234567945', 'Jalan Soekarno No. 65'),
('P010', 'Setyorini', '081234567685', 'Jalan Asia Afrika No. 1');

SELECT * FROM Pelanggan;

INSERT INTO Mobil (id_mobil, merk_mobil, warna_mobil) VALUES ('M001', 'Toyota Avanza', 'Silver');
INSERT INTO Mobil (id_mobil, merk_mobil, warna_mobil) VALUES ('M002', 'Honda Mobilio', 'Hitam');
INSERT INTO Mobil (id_mobil, merk_mobil, warna_mobil) VALUES ('M003', 'Honda CRV', 'Putih');
INSERT INTO Mobil (id_mobil, merk_mobil, warna_mobil) VALUES ('M004', 'Honda HRV', 'Silver');
INSERT INTO Mobil (id_mobil, merk_mobil, warna_mobil) VALUES ('M005', 'Toyota Ertiga', 'Silver');

SELECT * FROM Mobil;

--record transaksi
INSERT INTO Transaksi (id_transaksi, id_pelanggan, id_mobil, nama_pelanggan, nama_mobil, tgl_pinjam, tgl_kembali, harga_sewa)
VALUES ('T001', 'P001', 'M001', 'Rahmawati', 'Toyota Avanza', '2023-07-01', '2023-07-03', 600000);
INSERT INTO Transaksi (id_transaksi, id_pelanggan, id_mobil, nama_pelanggan, nama_mobil, tgl_pinjam, tgl_kembali, harga_sewa)
VALUES ('T002', 'P002', 'M005', 'Lusiana', 'Toyota Ertiga', '2023-07-02', '2023-07-05', 800000);
INSERT INTO Transaksi (id_transaksi, id_pelanggan, id_mobil, nama_pelanggan, nama_mobil, tgl_pinjam, tgl_kembali, harga_sewa)
VALUES ('T003', 'P003', 'M004', 'John', 'Honda HRV', '2023-07-03', '2023-07-07', 1000000);
INSERT INTO Transaksi (id_transaksi, id_pelanggan, id_mobil, nama_pelanggan, nama_mobil, tgl_pinjam, tgl_kembali, harga_sewa)
VALUES ('T004', 'P004', 'M002', 'Calvin Klein', 'Honda Mobilio', '2023-07-04', '2023-07-09', 1200000);
INSERT INTO Transaksi (id_transaksi, id_pelanggan, id_mobil, nama_pelanggan, nama_mobil, tgl_pinjam, tgl_kembali, harga_sewa)
VALUES ('T005', 'P005', 'M003', 'Taylor Swift', 'Honda CRV', '2023-07-05', '2023-07-11', 1400000);
INSERT INTO Transaksi (id_transaksi, id_pelanggan, id_mobil, nama_pelanggan, nama_mobil, tgl_pinjam, tgl_kembali, harga_sewa)
VALUES ('T006', 'P006', 'M004', 'Jennie', 'Honda HRV', '2023-07-06', '2023-07-13', 2400000);
INSERT INTO Transaksi (id_transaksi, id_pelanggan, id_mobil, nama_pelanggan, nama_mobil, tgl_pinjam, tgl_kembali, harga_sewa)
VALUES ('T007', 'P007', 'M005', 'Tom Cruise', 'Toyota Ertiga', '2023-07-07', '2023-07-08', 400000);
INSERT INTO Transaksi (id_transaksi, id_pelanggan, id_mobil, nama_pelanggan, nama_mobil, tgl_pinjam, tgl_kembali, harga_sewa)
VALUES ('T008', 'P008', 'M002', 'Jones', 'Honda Mobilio', '2023-07-08', '2023-07-10', 600000);
INSERT INTO Transaksi (id_transaksi, id_pelanggan, id_mobil, nama_pelanggan, nama_mobil, tgl_pinjam, tgl_kembali, harga_sewa)
VALUES ('T009', 'P009', 'M001', 'Lucy', 'Toyota Avanza', '2023-07-09', '2023-07-11', 600000);
INSERT INTO Transaksi (id_transaksi, id_pelanggan, id_mobil, nama_pelanggan, nama_mobil, tgl_pinjam, tgl_kembali, harga_sewa)
VALUES ('T010', 'P010', 'M001', 'Setyorini', 'Toyota Avanza', '2023-07-10', '2023-07-12', 600000);

SELECT * FROM Transaksi;

--delete 2 data admin
DELETE FROM Admin
WHERE id_admin IN ('A001', 'A002') AND EXISTS (
    SELECT 1 FROM Admin WHERE id_admin IN ('A001', 'A002')
    LIMIT 2
);
SELECT * FROM Admin;

--update data pelanggan
UPDATE Pelanggan
SET tlp_pelanggan = '081234567891'
WHERE id_pelanggan = 'P001';
SELECT * FROM Pelanggan;

--inner join
SELECT * FROM Pelanggan
INNER JOIN Transaksi ON Pelanggan.id_pelanggan = Transaksi.id_pelanggan;

--outer left join
SELECT *FROM Pelanggan
LEFT JOIN Transaksi ON Pelanggan.id_pelanggan = Transaksi.id_pelanggan;

--outer right join
SELECT * FROM Pelanggan
RIGHT JOIN Transaksi ON Pelanggan.id_pelanggan = Transaksi.id_pelanggan;

