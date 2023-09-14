CREATE TABLE Nasabah (
    Id_nasabah INT(20) PRIMARY KEY,
    Id_teller INT(20),
    Nomor_rekening INT(20),
    Nama VARCHAR(35),
    Tanggal_lahir DATE,
    Email VARCHAR(35),
    Nomor_telepon INT(14),
    Alamat VARCHAR(40),
    Jenis_kelamin ENUM('Laki-Laki', 'Perempuan'),
    FOREIGN KEY (Id_teller) REFERENCES NamaTabelTeller(NamaKolomTeller),
    FOREIGN KEY (Nomor_rekening) REFERENCES NamaTabelRekening(NamaKolomRekening)
);

