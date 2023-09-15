
CREATE TABLE Bank (        --membuat tabel baru bernama Bank
    Id_bank INT PRIMARY KEY,    -- menambahkan id bank sebagai primary key 
    Nama_bank VARCHAR(20),       -- menambahkan kolom nama bank
    Alamat_kantor_pusat VARCHAR(30),    -- menambahkan kolom alamat kantor pusat
    Nomor_direktur INT(30),                -- menambahkan kolom nomor direktur
    No_telepon_kantor_pusat INT(30),         -- menambahkan kolom  nomor telepon kantor pusat
    FOREIGN KEY (Nomor_rekening) REFERENCES NRekenin(Nomor_rekening)   -- menambahkan kolom nomor rekening sebagai foreign key
);
