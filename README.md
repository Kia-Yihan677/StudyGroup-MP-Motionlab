# StudyGroup-MP-Motionlab

`Introduction To Flutter and Dart Programming Languange`

Rangkuman materi dari pertemuan week1 dan dari source belajar lainnya

`Variable`
Untuk membuat deklarasi variable, gunakan format :
`TipeData namaVariable;`
untuk mengubah isi variable, dengan format seperti ini :
->`namaVariable = isi valuenya;`

`Kata kunci var`
Membuat variable langsung dengan nilainya, TipeData akan dibaca sesuai dengan isi
nilainya secara otomatis.
-> `var namaVariable = value;`

`Kata kunci final`
ketika tidak ingin sebuah variable bisa dideklarasikan ulang (ubah isi valuenya)
->`final TipeData namaVariable = value:`
->`final namaVariable = value;`

`Kata kunci const`
nilai waktu akan dihardcore ketika kode program di kompilasi, sehingga tidak akan pernah berubah
-> `const type variableName = value;`

`Komentar`
kode program yang akan diabaikan ketika kode program dijalankan atau dicompile

ada 3 jenis :

1. Single-line comment
   -> gunakan 2 slash : `//`
   dan hanya berlaku buat satu baris

2. Multi-line comment
   -> dapat lebih dari satu baris, gunakan : `/*`
   `isi Komentar`
   `*/`
3. Documentation
   -> gunakan 3 slash : ///
   jika memasuki baris baru, masih dalam format komentar

`Number`
Ada dua tipe data number, yaitu `int` dan `double`
->`int adalah tipe data bilangan bulat`
->`double` adalah tipe data bilangan desimal (saat menulis koma menggunakan . (titik))

`num`
->`num` adalah tipe data number yang bisa int ataupun double

`Boolean`
Mempresentasikan nilai benar(true) atau salah(false)
-> dipresentasikan dengan kata kunci `bool`

`String`
Merupakan tipe data text atau tulisan
-> menggunakan tanda kutip satu `(')` atau kutip dua `(")`

`String interpolation`
string mendukung expressions diamana dalam expression kita bisa mengambil data dari variabel lain
menggunakan format `${isiExpressions}`, kalau singkat/sederhana langsung saja `$isiExpression`

contoh
String firstName = "John";
string lastName = "Doe";

var fullName = '$firstName $lastName';

`Karakter Backslash`
digunakan untuk menekankan bahwa karakter setelahnya dianggap benar karakter tersebut
jika mau buar karakter $ dalam string bisa gunakan \$ atau jika mau membuat
karakter ' (petik satu), kita bisa gunakan \'
-> `\`

`Dynamic`
tipe ini dapat menampung semua jenis tipe data, memungkinkan untuk mengubah tipe data nilainya selama runtime
-> `dynamic`

`Konversi Tipe data`

-> `Konversi int ke double maupun sebaliknya`

`var intToDouble = inputInt.toDouble();`
`var doubleToInt = inputDouble.toInt();`

->`konversi number dan string`
menggunakan `toString()` untuk konversi number ke string
menggunakan metode `parse()` untuk melakukan konversi dari string ke number, dapat digunakan
baik di int maupun double, dapat juga menggunakan method `toInt()` atau `toDouble()`

1. `Konversi number ke string`

   `var intToString = inputInt.toString();`
   `var doubleToString = inputDouble.toString();`

2. `Konversi string ke number`

   `var inputString = '1000' `
   `var inputInt = int.parse(inputString);`
   `var inputDouble = double.parse(inputString);`

->`konversi Boolean dan String`

untuk mengonversi tipe data boolean ke string, bisa menggunakan
method `toString()` namun jika ingin sebaliknya yaitu String ke Boolean tidak ada caranya
melainkan ia memiliki cara sendirinya yaitu make operator perbandingan

`var booleanToString = inputBoolean.toString();`

`Operator Aritmatika`
->
`+ : pertambahan`
`- : pengurangan`
`-expression : angka negatif`
`* : perkalian`
`/ : pembagian (hasil double atau desimal)`
`~/ : pembagian (hasil int atau bulat)`
`% : modulus (hasil sisa bagi)`

`Operator Perbandingan`
-> Dimana keluaran akan berupa boolean

`== : sama dengan`
`!= : tidak sama dengan`
`< : lebih kecil`
`<= : lebih kecil atau sama`
`> : lebih besar`
`>= : lebih besar atau sama`

keluaran akan berupa boolean

`Operator Logika`

`&& : and (semua harus benar)`
`|| : or (salah satu harus benar)`
`! : not (negasi) atau kebalikan`

`Operator Type Test`

`as melakukan konversi tipe dara secara paksa`
`is true jika object sesuai tipe data`
`is! true jika object tidak sesuai tipe data`

`List`

-> Merupakan tipe data yang beisi kumpulan data, tippe data ini dikenal sebagai
array, menggunakan []

Untuk membuat list kita bisa tentukan tipe data nya
-> `List<TipeData>namaVariable=[];`

atau bisa menggunakan kata kunci var atau final:

`var namaVariable = <TipeData>[];`
`final namaVariable = <TipeData>[];`

`Menambah data di list`

-> `namaVariable.add();`

`Index`
index dapat mengubah, mendapat, menghapus data di list

`Manipulasi data di list`

`list.add(value) : menambah data ke list`
`list[index] : mengambil data di list`
`list[index] = value : mengubah data di list`
`list[index] = valiue : mengubah data di list`
`list.removeAt(index) : menghapus data di list, index secara otomatis akan bergeser`

`Set`

set tipe data yang sama dengan list, tapi bedanya set tidak menerima duplikat data, jika kita masukkan data duplikat, hanya satu yang kebaca, yang lain dihiraukan

Tidak seperti list yang memakai [], Set make {}

-> `Set<TipeData> namaVariable = {};`
`var namaVariable = <TipeData>{};`

`Manipulasi Set`

`set.length  : mendapatkan panjang set`
`set.add(value) : Menambah data ke Set`
`set.remote(value) : Menghapus data dari set`

`Map`

-> tipe data key-value, key mirip seperti index, value adalah data nya index pada list, dimana sudah diatur oleh list secara otomatis(dan nilainya auto increment dari 0),
sedangkan pada Map, key-nya bisa ditentukan dengan tipe data apapun , dan kita perlu tentukan secara manual key nya ketika memasukkan value nya

`Map<TipeKey,TipeValue> namaVariable = {};`
`var namaVariable = Map<TipeKey, TipeValue>();`
`var namaVariable = <TipeKey, TipeValue>;`

`Manipulasi Map`

`map.length : Mendapatkan panjang map`
`map[key] : mendapatkan data di map`
`map[key] = value : mengubah data di map`
`map.remove(key) : menghapus data di map`

`if dan else (Percabangan)`

Mengeksekusi kode program tertentu ketika suatu kondisi terpenuhi

-> `Percabangan dengan if`

`if (kondisi) {
// blok kode yang dieksekusi jika kondisi terpenuhi/true
} `

-> `Percabangan dengan if-else`
`if (kondisi) {`
`// blok kode yang dieksekusi jika kondisi terpenuhi/true`
`} else {`
`// blok kode yang dieksekusi jika kondisi terpenuhi/true`
`}`

-> `Percabangan dengan else - if`

`if (kondisi1) {`
`// blok kode jika kondisi1 bernilai true`
`} else if (kondisi2) {`
`// blok kode jika kondisi1 false dan kondisi2 true`
`} else {`
`// blok kode jika semua kondisi di atas false`
`}`

else if bisa ditambahkan sebanyak banyaknya, jika salah satu kondisi terpenuhi maka otomatis berhenti, kondisi selanjutnya tidak akan dieksekusi

`Switch case`

-> lebih sederhana, hanya untuk perbandingan ==

`switch (ekspresi) {`
`  case nilai1:`
`    // blok kode jika ekspresi == nilai1`
`    break;`
`  case nilai2:`
`    // blok kode jika ekspresi == nilai2`
`    break;`
`  default:`
`    // blok kode jika tidak ada yang cocok`
`}`

`Null`

Tipe representasi data kosong. Jika ingin membuat variable yang bisa diisi data null, tambahkan karakter ?

-> `TipeData ? namaVariable = null;`

`Konversi nullable ke non nullable`

Konversi tipe data non nullable ke nullable langsung masukkan data nya saja, jika kebalikannya yaitu nullable ke non nullable, wajib melakukan null check terlebih dahulu

contoh

`non nullable ke nullable `

String name = 'Eko';
String? nullableName = name;

`nullable ke non nullable`

int? nullableNumber;
if (nullableNumber != null) {
int number = nullableNumber;
}

`for loop`

untuk melakukan perulangan, akan diulangi selama kondisi for terpenuhi

-> Perulangan dengan Init statement

`for (init; condition; increment) {`
`  // Blok kode yang akan diulang`
`}`

`While loop`

-> Perulangan yang lebih sederhana dibanding for loop

`while (kondisi) {`
`  // Blok kode yang akan diulang`
`}`

`Do while loop`

-> Bedanya dengan while loop, dibagian pengecekan kondisinya di akhir

`do {`
`  // Blok kode yang akan dijalankan`
`} while (kondisi);`

`Break and continue`

`Break untuk menghentikan case dalam switch, break juga digunakan untuk menghentikan perulangan`

`Continue digunakan untuk menghentikan perulangan daat ini, lalu melanjutkan ke perulangan selanjutnya`

`Function`

-> Blok kode program yang akan berjalan saat kita panggil untuk membuat function, menggunakan kara kunci void, diikuti dengan nama function, kurung () dan diakhiri dengan block
untuk memanggil function, gunakan nama function lalu diikuti dengan ()

Function tanpa parameter dan pengembalian nilai

`void sayHello() {`
` print('Hello, world!');`
`}`

`void main() {`
` sayHello();  // Memanggil fungsi sayHello`
`}`

`Fungsi parameter `

contoh

`void sayHello(String firstName, String lastName) {`
`print('Hello $firstName $lastName);`
`}`

`void main(){`
`sayHello('Ika', 'Kia);`

` }`

`Function return value`

contoh

`void sayHello(String name){`
`return 'Hello $name';`
`}`

`void main (){`
` var data = sayHello('Oki');`
`print(data);`
`}`

`Arrow function`
-> Penulisan singkat untuk fungsi yang hanya memiliki satu pernyataan. Fungsi ini menggunakan tanda panah (=>) sebagai pengganti tanda kurung kurawal ({}) dan kata kunci return.

`returnType functionName(parameters) => expression;`
