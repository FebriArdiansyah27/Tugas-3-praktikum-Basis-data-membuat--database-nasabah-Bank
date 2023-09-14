CREATE TABLE Transaksi (
    Nomor_transaksi INT(20) PRIMARY KEY,
    Nomor_rekening INT(18),
    Keterangan_transaksi VARCHAR(20),
    Jenis_transaksi VARCHAR(40),
    Tanggal_transaksi DATE,
    Jumlah_transaksi INT(125),
    Saldo INT(125),
    FOREIGN KEY (Nomor_rekening) REFERENCES Rekening(Nomor_rekening)
);

