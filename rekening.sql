CREATE TABLE Rekening (
    Nomor_rekening INT(18) PRIMARY KEY,
    Saldo INT(18),
    Jenis_rekening ENUM('Giro', 'Deposito', 'Tabungan'),
    Tanggal_dibuka DATE,
    Jumlah_transaksi INT(18)
);
