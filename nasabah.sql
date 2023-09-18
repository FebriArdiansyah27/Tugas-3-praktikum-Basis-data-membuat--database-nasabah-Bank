CREATE TABLE nasabah (    -- membuat tabel baru bernama nasabah
    Id_nasabah INT(20) PRIMARY KEY,  -- menambahkan kolom id_nasabah sebgai Primay key
    FOREIGN KEY (Nomor_rekening) REFERENCES Rekening(Nomor_Rekening),    -- menambahkan kolom nomor_rekening sebagai foreign key
    FOREIGN KEY (Id_teller) REFERENCES Teller(Id_teller),  -- menambahkan kolom id_teller sebagai foreign key
    Nama VARCHAR(35),                 -- menambahkan kolom nama
    Tanggal_lahir DATE,                -- menambahkan kolom tanggal lahir
    Email VARCHAR(35),                  -- menambahkan kolom email
    Nomor_telepon INT(14),               -- menambahkan kolom nomor telepon
    Alamat VARCHAR(40),                   -- menambahkan kolom Alamat
    Jenis_kelamin ENUM('Laki-Laki', 'Perempuan')  -- menambahkan kolom Jenis kelamin, dengan menggunakan fungsi enum supaya bisa langsung memilih value
);

