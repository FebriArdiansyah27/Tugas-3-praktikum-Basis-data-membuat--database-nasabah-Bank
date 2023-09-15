
CREATE TABLE Direktur (      --- membuat table baru bernama Direktur
    Id_direktur INT(14) PRIMARY KEY, --  menambahkan kolom id_direktur sebagai primary key
    Nama_direktur VARCHAR(40),            -- menambahkan kolom nama direkur
    Jenis_kelamin ENUM('Laki-Laki', 'Perempuan'),  -- menambahkan kolom jenis kelamin dnegan memnggunakan fungsi enum untuk membatasi value yang bisa diinputkan
    Nomor_telepon INT(14)               -- menambahkan kolom nomor telepon
);
