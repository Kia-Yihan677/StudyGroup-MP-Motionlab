1. Penggunaan SingleChildScrollView
   SingleChildScrollView digunakan untuk membuat tampilan yang dapat digulir secara vertikal. Ini penting saat konten UI melebihi ukuran layar dan memerlukan scroll.
2. Pengaturan Layout
   Row dan Column: Digunakan untuk mengatur elemen-elemen secara horizontal (Row) atau vertikal (Column). Kamu bisa menggunakan ini untuk menata widget di sepanjang sumbu utama.
   MainAxisAlignment: Untuk menentukan bagaimana widget anak diatur di sepanjang sumbu utama (horizontal untuk Row dan vertikal untuk Column).
3. Padding dan Margin
   Padding digunakan untuk memberi jarak antara elemen UI, menghindari elemen UI saling bertabrakan.
   EdgeInsets.only digunakan untuk memberi padding pada sisi tertentu saja, seperti left, right, top, atau bottom.
4. Penggunaan Image.asset
   Digunakan untuk menampilkan gambar dari file yang ada di dalam folder assets. Kode ini menunjukkan bagaimana menambahkan gambar ke dalam tampilan antarmuka dengan ukuran tertentu.
5. Teks dan Styling
   Text.rich memungkinkan penggunaan beberapa gaya teks dalam satu widget. Ini berguna untuk menampilkan teks dengan gaya yang berbeda di bagian tertentu (misalnya, teks biasa dan teks tebal dalam satu baris).
   TextStyle digunakan untuk menentukan gaya teks, seperti ukuran font, warna, dan ketebalan font.
6. Custom Widgets
   Fungsi \_buildBubble digunakan untuk membuat elemen UI yang dapat digunakan berulang kali dengan parameter berbeda, seperti label, warna latar belakang, dan warna teks. Ini mengilustrasikan cara membuat komponen UI kustom untuk mempercepat pembangunan antarmuka.
7. Navigasi dan Tombol
   bottomNavigationBar adalah bagian bawah layar yang berisi ikon-ikon navigasi. Ini memungkinkan pengguna untuk berpindah antar halaman atau mengakses fitur tertentu. Gaya ikon-ikon ini diatur dengan ukuran dan warna yang konsisten.
8. Tata Letak Responsif
   Kode ini memanfaatkan berbagai widget seperti SizedBox untuk menambah ruang antar elemen UI, dan juga menggunakan properti alignment untuk menyesuaikan posisi widget secara responsif, yang penting dalam slicing UI untuk memastikan desain tetap konsisten di berbagai ukuran layar.
9. Penggunaan Container untuk Styling
   Container sering digunakan untuk membungkus widget lain, memberikan padding, margin, dan mengatur properti visual lainnya, seperti warna latar belakang dan border radius.
10. SafeArea Widget
    SafeArea digunakan untuk memastikan konten tidak tertutup oleh elemen sistem seperti notch, status bar, atau navigasi bawah pada perangkat. Ini penting untuk memastikan konten tetap terlihat dengan baik di berbagai perangkat.
11. Penggunaan Scaffold
    Scaffold adalah widget dasar untuk struktur UI aplikasi Flutter. Ini menyediakan banyak area standar seperti appBar, body, bottomNavigationBar, dan lainnya. Kode ini memanfaatkan Scaffold untuk menempatkan semua widget utama di dalamnya.
12. Container dengan Padding dan Warna
    Container adalah widget yang sangat fleksibel. Dalam kode ini, Container digunakan untuk membungkus berbagai elemen, memberikan padding dan mengatur warna latar belakang (color). Ini sering digunakan untuk desain elemen UI yang lebih terstruktur.

Misalnya, pada bagian bottomNavigationBar, kita menggunakan Container untuk memberi warna latar belakang hijau dan menambahkan padding vertikal, sehingga memberikan efek visual yang lebih baik.

13. Penggunaan ListView untuk Scrollable Horizontal
    ListView digunakan di dalam Container untuk membuat daftar elemen yang dapat digulir secara horizontal. Pada kode ini, scrollDirection: Axis.horizontal diatur untuk membuat tampilan daftar filter kategori yang dapat digulir. Ini adalah pola umum saat menampilkan kategori produk atau menu yang lebih banyak daripada ruang yang tersedia.
14. Penggunaan Align dan Padding
    Align digunakan untuk menempatkan widget di posisi tertentu dalam ruang yang tersedia. Sebagai contoh, pada bagian teks "Our way of loving", Align digunakan untuk meletakkan teks di sisi kiri, sementara Padding digunakan untuk memberikan jarak antar elemen.
15. SizedBox untuk Jarak Antar Elemen
    SizedBox sering digunakan untuk memberikan ruang kosong antara elemen-elemen di dalam layout. Ini memudahkan untuk mengatur jarak antar widget, baik secara vertikal maupun horizontal.
16. Custom Button or Action (Icon Buttons)
    Pada bagian bottomNavigationBar, ikon-ikon seperti Icons.home, Icons.wallet_travel_outlined, dan lainnya digunakan untuk memberikan navigasi ke fitur berbeda dalam aplikasi. Ikon-ikon ini dapat diklik, dan sering digunakan untuk tindakan utama dalam aplikasi.
17. Text.rich untuk Teks yang Berbeda Gaya
    Text.rich memberikan fleksibilitas dalam penataan teks dengan dua gaya berbeda dalam satu teks. Ini memberikan kebebasan untuk mendesain teks yang lebih menarik dan dinamis, seperti yang dilakukan pada bagian teks "Our way of loving" dan "you back".
18. Font dan Size yang Konsisten
    Pada banyak bagian, TextStyle digunakan untuk menentukan ukuran font, warna font, dan ketebalan font. Konsistensi penggunaan ukuran dan jenis font sangat penting dalam slicing UI agar antarmuka pengguna tampak profesional dan mudah dibaca.
19. Respon terhadap Ukuran Layar
    Beberapa widget diatur dengan ukuran tetap (misalnya, width: 177.89 dan height: 251.04 untuk gambar produk), sementara yang lain, seperti SizedBox atau ListView, disesuaikan untuk responsivitas berdasarkan ukuran layar. Ini sangat penting untuk memastikan bahwa aplikasi terlihat bagus di berbagai perangkat dengan ukuran layar berbeda.
20. Penyusunan Elemen Secara Horizontal dan Vertikal
    Row dan Column adalah widget yang digunakan untuk menyusun elemen UI secara horizontal dan vertikal. Dalam slicing UI, kamu harus memahami kapan menggunakan Row untuk penataan horizontal dan Column untuk penataan vertikal. Ini memungkinkan desain yang lebih terstruktur dan rapi.
21. Penggunaan BoxDecoration untuk Tampilan Estetis
    Pada bagian \_buildBubble, BoxDecoration digunakan untuk memberikan gaya pada wadah elemen, seperti border radius (untuk membuat sudut melengkung) dan warna latar belakang. Ini digunakan untuk menambah elemen desain yang lebih estetis dan modern.
