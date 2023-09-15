CREATE TABLE Rekening (                 -- menambahkan sebuah tabel baru bernama Rekening
    Nomor_rekening INT(18) PRIMARY KEY, --menambahkan  kolom Nomor_rekening sebagai primay key
    Saldo INT(18),                      --menambahkan  kolom saldo 
    Jenis_rekening ENUM('Giro', 'Deposito', 'Tabungan'), --menambahkan  kolom Jenis rekening, disini kita 
                                                          --menggunakan fungsi Enum yang artinya kita harus memilih jenis rekening antara tabungan,
                                                          --giro dan deposito 
    Tanggal_dibuka DATE,           -- menambahkan kolom tanggal dibukanya rekening
    Jumlah_transaksi INT(18)        -- menambahkan kolom jumlah transaksi
);
