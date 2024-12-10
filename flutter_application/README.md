Rangkuman

`Halaman Splash Screen`
Halaman ini adalah layar pembuka yang muncul selama 3 detik sebelum beralih ke halaman login. Tampilan hanya berupa gambar tengah (splash.png) dengan latar belakang putih. Setelah waktu habis, pengguna langsung diarahkan ke halaman berikutnya yaitublogin.

`Halaman register_page`
Halaman ini digunakan untuk mendaftarkan akun baru pengguna. Elemen-elemen yang ada di halaman ini adalah:

`Form Input`: Empat kolom untuk mengisi nama lengkap, email, password, dan konfirmasi password. Semua input itu dibuat menggunakan widget `CustomTextField.`

`Tautan ke Halaman Login`: Teks kecil di bawah tombol, seperti "Already have an account? Login", yang bisa ditekan untuk berpindah ke halaman login. Menggunakan `RichText`.

Animasi Lottie: Menampilkan animasi visual yang telah didownload dari internet. disini menggunakan file lottie_login2.json.

Form Input: Ada dua kolom untuk mengisi email dan password. Sama seperti halaman register, input ini juga menggunakan `CustomTextField`.

Widget CustomTextField
Widget ini dibuat agar lebih mudah mengatur desain kolom input teks di semua halaman. Setiap input memiliki teks petunjuk (placeholder) seperti "Email" atau "Password", serta ikon kecil di sebelah kiri menggunakan `prefix.Icon` untuk menampilkannya.

Pada halaman splash screen, aplikasi otomatis berpindah ke halaman login setelah 3 detik. menggunakan `Navigator.pushReplacement.`

Teks interaktif seperti "Login" dan "Register" menggunakan RichText dengan TapGestureRecognizer untuk berpindah ke halaman yang sesuai.

Navigasi antar halaman diimplementasikan menggunakan `Navigator` dan `Navigator.pushNamed.`
