`State Management` digunakan untuk mengelola dan memantau perubahan data yang terjadi pada halaman Cart menggunakan GetX.

Pada halaman Cart, ada dua variabel yang dikelola yaitu `kuantitas produk Mi Band 8 Pro `dan `Lycra Men's shirt.`

Variabel-variabel ini didefinisikan sebagai RxInt di dalam controller (CartController) yang memanfaatkan obs (observable) untuk memantau perubahan nilai.

`Fungsi Increment & Decrement:`
Fungsi seperti miQuantityIncrement() dan miQuantityDecrement() didefinisikan di controller untuk menambah atau mengurangi kuantitas produk.

`GetX` memungkinkan kita untuk secara otomatis memperbarui tampilan ketika ada perubahan nilai pada state ini.

Buat `model Product` untuk menyimpan informasi tentang produk di keranjang belanja

`Re-usable Widget:`
CartItemWidget yang dapat digunakan kembali untuk menampilkan setiap item dalam keranjang belanja.
