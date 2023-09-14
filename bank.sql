
CREATE TABLE Bank (
    Id_bank INT PRIMARY KEY,
    Nama_bank VARCHAR(20),
    Nomor_rekening INT,
    Alamat_kantor_pusat VARCHAR(30),
    Nomor_direktur INT(30),
    No_telepon_kantor_pusat INT(30),
    FOREIGN KEY (Nomor_rekening) REFERENCES NRekenin(Nomor_rekening)
);
