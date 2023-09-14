# Tugas Praktikum 3
  pada tugas kali ini, kami diminta untuk merealisasikan ERD yang telah kami buat pada tugas ke-2 atau tugas pada pertemuan sebelumnya, jadi sebelum merealisasikan ERD menjadi sebuah database pertama-tama saya akan memuat semua atribut yang ada pada satu entitas kedalam sebuah tabel terlebih dahulu. kemudian setelah tabel dibuat saya akan membuat database baru dengan memanfaatkan MYSQL dengan menggunakan sofware XAMPP.

# tabel 1 
# Nasabah bank
![image](https://github.com/FebriArdiansyah27/Tugas-3-praktikum-Basis-data-membuat--database-nasabah-Bank/assets/131425009/23665318-a5d4-481c-8cf0-5e940ad3af07)
  tabel pada gambar diatas merupakan sebuah tabel yang terbentuk dari entitas nasabah bank yang telah dibuat pada ERD di praktikum ke-2. yang mana pada tabel tersebut memiliki beberapa atribut seperti nama, id_nasabah, nomor_rekening, jenis kelamin, id_teller, tanggal lahir, email, nomor telepon, alamat, jenis kelamin. kemudian selanjutnya kita akan membuat database dengan menggunakan data yang terdapat pada tabel tersebut. <br>
  <br>untuk membuat table nasabah pada database yang kita buat kita dapat menambahkan kode berikut pada database yang telah kita buat.[Source code Table Nasabah](nasabah.sql) setelah kita menambahkan kode tersebut maka akan terbentuk struktur tabel seperti berikut:

![image](https://github.com/FebriArdiansyah27/Tugas-3-praktikum-Basis-data-membuat--database-nasabah-Bank/assets/131425009/954f05b9-5bf0-4111-924d-00670f80e608)
gambar diatas memperlihatkan struktur dari tabel nasabah yang telah kita buat sebelumnya. disana bisa terlihat bahwa id_nasabah merupakan primary key,nomor_rekening dan id_teller adalah foreign key, dan sisahnya adalah basic atribut.<br>

berikut adalah tampilan tabel-tabel yang telah ditambahkan pada database:



  # tabel 2 
  # Transaksi
![image](https://github.com/FebriArdiansyah27/Tugas-3-praktikum-Basis-data-membuat--database-nasabah-Bank/assets/131425009/8e060dba-cace-4470-bfce-daf2e843b6d8)
tabel pada gambar diatas merupakan sebuah tabel yang terbentuk dari entitas Transaksi yang telah dibuat pada ERD di praktikum pertemuan 2. Pada tabel tersebut terdapat 7 nama field yang nantinya akan dijadikan kolom pada tabel Transaksi di database. Isi dari tabel yang kita buat nantinya adalah kolom Nomor transaksi sebagai primary key, dan nomor rekening sebagai foreign key, dan sisahnya adalah basic atribut. <br>
  <br>untuk membuat table Transaksi pada database yang kita buat kita dapat menambahkan kode berikut pada database yang telah kita buat.[Source code Table Transaksi](transaksi.sql) setelah kita menambahkan kode tersebut maka akan terbentuk struktur tabel seperti berikut:
![image](https://github.com/FebriArdiansyah27/Tugas-3-praktikum-Basis-data-membuat--database-nasabah-Bank/assets/131425009/786b239b-95f9-44a8-8f89-204103c9344e)
gambar diatas memperlihatkan struktur dari tabel nasabah yang telah kita buat sebelumnya. disana bisa terlihat bahwa Nomor_transaksi merupakan primary key,nomor_rekening  adalah foreign key, dan sisahnya adalah basic atribut.key tersebut dilambangkan oleh kunci emas sebgai primary key, dan kunci silver sebagai fereign key.<br>

berikut adalah tampilan tabel-tabel yang telah ditambahkan pada database:


# tabel 3
# Bank
![image](https://github.com/FebriArdiansyah27/Tugas-3-praktikum-Basis-data-membuat--database-nasabah-Bank/assets/131425009/bdcfb0a9-143b-4321-9571-03dd8c0eacaa)
tabel pada gambar diatas merupakan sebuah tabel yang terbentuk dari entitas Bank yang telah dibuat pada ERD di praktikum pertemuan 2. Pada tabel tersebut terdapat  6 nama field yang nantinya akan dijadikan kolom pada tabel Bank di database. Isi dari tabel yang kita buat nantinya adalah Id Bank sebagai primary key, dan nomor rekening sebagai foreign key, dan sisahnya adalah basic atribut. <br>

  <br>untuk membuat table Bank pada database yang kita buat kita dapat menambahkan kode berikut pada database yang telah kita buat.Source code Table [Bank](bank.sql) setelah kita menambahkan kode tersebut maka akan terbentuk struktur tabel seperti berikut:
![image](https://github.com/FebriArdiansyah27/Tugas-3-praktikum-Basis-data-membuat--database-nasabah-Bank/assets/131425009/89cd89af-5175-46eb-a3cf-27f66855331d)
gambar diatas memperlihatkan struktur dari tabel bank yang telah kita buat sebelumnya menggunakan database MYSQL. disana bisa terlihat bahwa id_bank merupakan primary key,dan nomor_rekening adalah foreign key, dan sisahnya adalah basic atribut.key tersebut dilambangkan oleh kunci emas sebgai primary key, dan kunci silver sebagai fereign key.<br>

berikut adalah tampilan tabel-tabel yang telah ditambahkan pada database:



# tabel 4 
# teller
![image](https://github.com/FebriArdiansyah27/Tugas-3-praktikum-Basis-data-membuat--database-nasabah-Bank/assets/131425009/c7f3f0b5-3692-420b-b2ff-c1d38bda969d)
tabel pada gambar diatas merupakan sebuah tabel yang terbentuk dari entitas teller  yang telah dibuat pada ERD di praktikum ke-2. yang mana pada tabel tersebut memiliki beberapa atribut seperti id_teller sebagai primary key, id_direktur sebagai Foreign key dan yang 1 lagi adalah nama teller. kemudian selanjutnya kita akan membuat database dengan menggunakan data yang terdapat pada tabel tersebut. <br>

  <br>untuk membuat table nasabah pada database yang kita buat kita dapat menambahkan kode berikut pada database yang telah kita buat.Source code Table [Teller](teller.sql) setelah kita menambahkan kode tersebut maka akan terbentuk struktur tabel seperti berikut:
  
![image](https://github.com/FebriArdiansyah27/Tugas-3-praktikum-Basis-data-membuat--database-nasabah-Bank/assets/131425009/7acb2651-fbf8-4e8d-8a0a-0ce47360f113)

gambar diatas memperlihatkan struktur dari tabel teller yang telah kita buat sebelumnya. disana bisa terlihat bahwa id_teller merupakan primary key dan id_direktur adalah foreign key, dan sisahnya adalah basic atribut.key tersebut dilambangkan oleh kunci emas sebagai primary key, dan kunci silver sebagai fereign key.<br>

berikut adalah tampilan tabel-tabel yang telah ditambahkan pada database:

# tabel 5 
# Direktur
![image](https://github.com/FebriArdiansyah27/Tugas-3-praktikum-Basis-data-membuat--database-nasabah-Bank/assets/131425009/a8ad99b9-0fcb-4324-bf05-ef8044f4b098)

tabel pada gambar diatas merupakan sebuah tabel yang terbentuk dari entitas direktur  yang telah dibuat pada ERD di praktikum ke-2. Pada tabel tersebut memiliki beberapa atribut seperti id_direktur sebagai primary key, nama direktur, jenis kelamin, dan nomor telepon direktur. kemudian selanjutnya kita akan membuat database dengan menggunakan data yang terdapat pada tabel tersebut. <br>

  <br>untuk membuat table nasabah pada database yang kita buat kita dapat menambahkan kode berikut pada database yang telah kita buat.Source code Table [Direktur](direktur.sql) setelah kita menambahkan kode tersebut maka akan terbentuk struktur tabel seperti berikut:
  
![image](https://github.com/FebriArdiansyah27/Tugas-3-praktikum-Basis-data-membuat--database-nasabah-Bank/assets/131425009/526d7a35-0964-4bff-80ce-957f70225187)

gambar diatas memperlihatkan struktur dari tabel direktur yang telah kita buat sebelumnya. disana bisa terlihat bahwa id_direktur merupakan primary key, dan sisahnya adalah basic atribut.key tersebut dilambangkan oleh kunci emas sebagai primary key, dan kunci silver sebagai fereign key.<br>


berikut adalah tampilan tabel-tabel yang telah ditambahkan pada database:

# table 6
# Rekening

![image](https://github.com/FebriArdiansyah27/Tugas-3-praktikum-Basis-data-membuat--database-nasabah-Bank/assets/131425009/dce083f1-9edb-47ac-a4fe-bcecc558ca02)

tabel pada gambar diatas merupakan sebuah tabel yang terbentuk dari entitas Rekening  yang telah dibuat pada ERD di praktikum ke-2.Pada tabel tersebut memiliki beberapa atribut seperti Nomor rekening sebagai primary key, dan sisahnya adalah basic atribut atau bukan sebuah key. kemudian selanjutnya kita akan membuat database dengan menggunakan data yang terdapat pada tabel tersebut. <br>

  <br>untuk membuat tabel rekening pada database yang kita buat kita dapat menambahkan kode berikut pada database yang telah kita buat.Source code Table [Teller](rekening.sql) setelah kita menambahkan kode tersebut maka akan terbentuk struktur tabel seperti berikut:
  
![image](https://github.com/FebriArdiansyah27/Tugas-3-praktikum-Basis-data-membuat--database-nasabah-Bank/assets/131425009/9c09f182-02d3-4560-b5fb-4ee84fd0ca0e)

gambar diatas memperlihatkan struktur dari tabel rekening yang telah kita buat sebelumnya. disana bisa terlihat bahwa nomor_rekening merupakan primary key  dan sisahnya adalah basic atribut .key tersebut dilambangkan oleh kunci emas sebagai primary key, dan kunci silver sebagai fereign key.<br>


berikut adalah tampilan tabel-tabel yang telah ditambahkan pada database:









