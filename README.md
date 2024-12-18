`CartPage`
CartPage adalah widget yang menampilkan TesPage. Di sini, CartController digunakan untuk mengelola dan mengupdate kuantitas produk.

`TesPage`
TesPage berisi tampilan dua produk, masing-masing dengan tombol untuk menambah dan mengurangi kuantitas. Setiap produk menggunakan widget Obx untuk menampilkan jumlah produk secara otomatis saat ada perubahan.

`CartController`
CartController adalah controller yang mengelola kuantitas produk. Di dalam controller ini, ada dua variabel reaktif (RxInt) yang digunakan untuk melacak jumlah produk:

`miQuantity`: Untuk jumlah Mi Band 8 Pro
`shirtQuantity`: Untuk jumlah Lycra Men's Shirt

Controller ini juga memiliki fungsi untuk menambah (Increment) dan mengurangi (Decrement) jumlah produk.
