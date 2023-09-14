
CREATE TABLE Direktur (
    Id_direktur INT(14) PRIMARY KEY,
    Nama_direktur VARCHAR(40),
    Jenis_kelamin ENUM('Laki-Laki', 'Perempuan'),
    Nomor_telepon INT(14)
);
