CREATE TABLE Transaksi (                  --membuat tabel baru bernama Transaksi
    Nomor_transaksi INT(20) PRIMARY KEY,  --menambahkan  kolom  Nomor_transaksi sebagai primary key
    Keterangan_transaksi VARCHAR(20),     -- menambahkan kolong keterangan transaksi 
    Jenis_transaksi VARCHAR(40),           --menambahkan  kolom jenis transaksi
    Tanggal_transaksi DATE,                --menambahkan  kolom tanggal transaksi
    Jumlah_transaksi INT(125),            --menambahkan  kolom menmabahkan jumlah transaksi
    Saldo INT(125),                       --menambahkan  kolom saldo
    FOREIGN KEY (Nomor_rekening) REFERENCES Rekening(Nomor_rekening) --menambahkan  kolom Nomor_rekening sebagai Foreign key
);

