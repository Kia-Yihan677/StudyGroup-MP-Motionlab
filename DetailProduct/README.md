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

code dart.main

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.chevron_left, size: 50),
                    Expanded(
                      child: Text(
                        "Product",
                        style: TextStyle(
                          fontSize: 22,
                        ),
                        textAlign: TextAlign.center, // Agar text di tengah
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Icon(
                        Icons.favorite,
                        size: 33,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Image.asset('assets/image/smartwatch.png'),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 20.0),
                  child: Text(
                    'Mi Band 8 Pro',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 10.0),
                  child: Text(
                    '\$54.00',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF00623B),
                    ),
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                  child: Text(
                    'Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        // Logika ketika tombol ditekan
                        print("Added to Cart");
                      },
                      child: Container(
                        width: 381.0,
                        height: 55.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF00623B),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Center(
                          child: Text(
                            'Add to Cart',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
