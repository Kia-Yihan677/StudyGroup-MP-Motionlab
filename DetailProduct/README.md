`Struktur Umum:`

Aplikasi dibangun menggunakan `MaterialApp` dengan `SafeArea` untuk menghindari area yang terhalang oleh perangkat (misalnya notch atau status bar).
Menggunakan `Scaffold` untuk menyediakan struktur dasar layout.
Konten ditampilkan dalam SingleChildScrollView agar dapat digulirkan jika konten melebihi layar.

`Header UI:`

Menggunakan `Row` untuk menampilkan elemen secara horizontal, dengan tiga elemen: ikon kiri, teks di tengah yang menggunakan Expanded untuk memberi ruang, dan ikon kanan.
Pengaturan teks dengan `TextAlign.center` agar teks "Product" berada di tengah.

Gambar Produk:

Menggunakan `Image.asse` untuk menampilkan gambar produk dari folder assets.
Informasi Produk:

Menampilkan judul produk ("Mi Band 8 Pro") dan harga produk di bawah gambar menggunakan Text dengan styling untuk ukuran font dan warna.
Deskripsi Produk:

Deskripsi produk ditampilkan menggunakan Text dengan padding dan styling yang mengatur ukuran font serta warna teks.
Tombol Aksi:

Tombol berbentuk Container dengan warna latar belakang dan teks di tengah, serta dibulatkan menggunakan `BorderRadius.circular.`

