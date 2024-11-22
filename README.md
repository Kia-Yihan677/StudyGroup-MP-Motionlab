# StudyGroup-MP-Motionlab

`rangkuman belajar command-git week 0`

⁠ `git add.`⁠ : buat nambah file ke remote environment.

⁠ `git commit -m` ⁠ ; buat perubahan di remote environment.

⁠ `git push` ⁠ : jika ada perubahan, diupdate ke git repository.

⁠ `git pull origin <branch_name>` ⁠ : Mengambil perubahan dari remote repository ke lokal.

⁠ `git ini`t ⁠ : untuk mulai repository baru di folder lokal.

⁠ `git remote add origin <url>` ⁠ : untuk nambahin remote repository di GitHub.

`Membuat dan Berpindah branch`

⁠ `git branch <branch_name>` ⁠ : membuat branch baru.

⁠ `git checkout -b <branch_name>` `⁠ : Berpindah ke branch tertentu.

`Melacak dan Menyimpan Perubahan`

⁠ `git status` ⁠ : Mengecek status perubahan pada repository lokal.

⁠ `git commit -m "Pesan commit"` ⁠ : Menyimpan perubahan dengan pesan deskriptif (diisi dengan tanda kutip).

`Mengambil dan mengirim perubahan`

⁠ `git pull origin <branch_name> `⁠ : Mengambil perubahan dari remote repository ke lokal.

⁠ `git push origin <branch_name> `⁠ : Mengirim perubahan dari lokal ke remote repository.

⁠ `git log` ⁠ : menampilkan riwayat commit.

⁠ `git reset --hard`⁠ : Membatalkan perubahan lokal dan kembali ke commit tertentu.

`git command yang aku gunakan untuk membuat repositoty dengan SSH : `

`ssh-keygen -t rsa -b 4096 -C "email@example.com"` : dimana "email@example.com" itu menggunakan email yang kita gunakan dalam akun git hub kita.

`cat ~/.ssh/id_rsa.pub` : menggunakan .pub karena menggunakan kunci publik, ketik teks ini di terminal, lalu akan menampilkan isi kunci publik yang dimulai dari ssh-rsa dan akan kita tempelkan di "add SSH key" untuk menyimpan SSH Di akun github kita.

`ssh -T git@github.com` : kita dapat menggunakan perintah ini untuk melakukan uji koneksi SSH ke akun github kita.

jika telah terhubung maka otomatis akan muncul pesan seperti ini :

Hi <username>! You've successfully authenticated, but GitHub does not provide shell access. (username akun github yang digunakan).

`Menggunakan SSH untuk operasi Git`

Setelah SSH key sudah terhubung, kita bisa menggunakan SSH URL untuk operasi Git, dengan menjalankan perintah ini di terminal :

`git remote set-url origin git@github.com:<username>/<repository>.git` : username dan repository yang kita gunakan di github

`git remote -v` : kita dapat menggunakan perintah ini untuk cek konfigurasi remote di repository lokal, dan akan mengeluarkan pesan seperti ini :

`origin  git@github.com:Kia-Yihan677/StudyGroup-MP-Motionlab.git (fetch)`
`origin  git@github.com:Kia-Yihan677/StudyGroup-MP-Motionlab.git (push)`

yang menandakan bahwa kita telah terhubung menggunakan SSH :D.

atau ketika aku meng-clone repository menggunakan SSH seperti:

`git clone git@github.com:Kia-Yihan677/StudyGroup-MP-Motionlab.git`

juga berarti udah menggunakan SSH.
