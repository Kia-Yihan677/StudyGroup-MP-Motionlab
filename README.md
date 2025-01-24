`Project dengan GetX Pattern`

**1. GetX Pattern**

**Penggunaan struktur folder pada GetX pattern bertujuan untuk memisahkan tanggung jawab setiap komponen dalam aplikasi agar lebih terstruktur. GetX sendiri adalah sebuah framework state management untuk Flutter yang ringan, cepat, dan memiliki banyak fitur. Dengan memanfaatkan GetX pattern, logika bisnis (Controller) dipisahkan dari logika UI (View), sehingga kode menjadi lebih terorganisir dan mudah dipelihara. state management untuk Flutter yang ringan, cepat, dan memiliki banyak fitur. GetX pattern membantu dalam memisahkan logika bisnis (Controller) dari logika UI (View) agar lebih terstruktur dan mudah dikelola.**

2. `Struktur Folder dalam GetX Pattern`

Proyek ini menggunakan struktur folder yang terorganisir untuk memisahkan setiap komponen:
yaitu:

`lib/`
`|- app/`
`   |- bindings/`
`   |- controllers/`
`   |- routes/`
`   |- views/`

dimana setiap fungsinya adalah :

**bindings/**: Menghubungkan controller dengan view saat halaman diinisialisasi.

**controllers/**: Menyimpan semua logika dan state management aplikasi.

**routes/**: Berisi definisi semua jalur navigasi aplikasi.

**views/**: Tempat semua UI aplikasi disusun.

lalu untuk implementasinya, menggunakan Routing dengan `routes`,
Binding untuk menghubungkan Controller dengan view menggunakan `bindings`
Controller berisi semua logika dan state managementnya contohnya `home_controller`

**dan yang terakhir memastikan semua UI ditulis menggunakan `Stateless Widget`**
