CREATE TABLE Teller (                 --menambahkan  tabel baru bernama teller
    Id_teller INT(14) PRIMARY KEY,    --menambahkan  kolom id_teller yang berperan sebagai primary key
    Nama_teller VARCHAR(30),          --menambahkan  kolom Nama teller
    FOREIGN KEY (Id_direktur) REFERENCES Direktur(Id_direktur)     --menambahkan  kolom  id direktur sebagai Foreign key
    Jenis_kelamin_teller ENUM('Laki-laki', 'Perempuan'),
    Nomor_telepon INT(14),
    Tanggal_lahir DATE,
    Alamat VARCHAR(40),
    Tanggal_bergabung DATE
);
