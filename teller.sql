CREATE TABLE Teller (
    Id_teller INT(14) PRIMARY KEY,
    Id_direktur INT(14),
    Nama_teller VARCHAR(30),
    FOREIGN KEY (Id_direktur) REFERENCES Direktur(Id_direktur)
);
