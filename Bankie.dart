import 'dart:io';

void main() {
  while (true) {
    stdout.writeln(
        ' ⋆౨ৎ˚⟡˖  ࣪Selamat datang di Bankie, kami siap melayani anda ◝(ᵔᗜᵔ)◜  ⋆౨ৎ˚⟡˖ ࣪');
    stdout.writeln('Tekan Enter untuk melanjutkan');
    stdin.readLineSync();

    stdout.writeln('⋆.˚⟡ ࣪ ˖ Buat akun dulu yuk⋆.˚⟡ ࣪ ˖');
    stdout.writeln('⋆.˚⟡ ࣪ ˖Mohon masukkan nama anda⋆.˚⟡ ࣪ ˖');
    String? nama = stdin.readLineSync();
    if (nama == null || nama.isEmpty) {
      print('Nama tidak boleh kosong !');
      continue;
    }

    stdout.writeln('⋆.˚⟡ ࣪ ˖Buat pin ATM anda⋆.˚⟡ ࣪ ˖');
    int? pin = int.tryParse(stdin.readLineSync()!);
    if (pin == null) {
      stdout.writeln('Pin tidak boleh kosong !');
      continue;
    }

    int saldo = 10000;

    while (true) {
      stdout.writeln(
          'Halo $nama ! transaksi apa yang ingin anda lakukan hari ini?  ');
      stdout.writeln('');
      print('1. Cek saldo');
      print('2. Deposit saldo');
      print('3. Tarik tunai');
      stdout.writeln('');
      stdout.writeln('Silakan pilih transaksi yang ingin dilakukan : ');
      String? transaksi = stdin.readLineSync();

      switch (transaksi) {
        case '1':
          stdout.writeln('Masukkan pin untuk melanjutkan transaksi:');
          int? inputPin = int.tryParse(stdin.readLineSync()!);
          if (inputPin != pin) {
            stdout.writeln('Pin salah ˳ᐟ . Transaksi dibatalkan.');
            continue;
          }
          stdout.writeln('Saldo anda Rp $saldo');
          break;
        case '2':
          stdout.writeln('Masukkan pin untuk melanjutkan transaksi:');
          int? inputPin = int.tryParse(stdin.readLineSync()!);
          if (inputPin != pin) {
            stdout.writeln('Pin salah ˳ᐟ . Transaksi dibatalkan.');
            continue;
          }
          stdout.writeln('Masukkan jumlah deposit :');
          int? depositSaldo = int.tryParse(stdin.readLineSync()!);
          if (depositSaldo != null && depositSaldo > 0) {
            saldo += depositSaldo;
            stdout.writeln('Saldo berhasil ditambahkan, Saldo anda Rp $saldo');
          } else {
            stdout.writeln('Silakan coba lagi');
          }
          break;
        case '3':
          stdout.writeln('Masukkan pin untuk melanjutkan transaksi:');
          int? inputPin = int.tryParse(stdin.readLineSync()!);
          if (inputPin != pin) {
            stdout.writeln('Pin salah ˳ᐟ . Transaksi dibatalkan.');
            continue;
          }
          stdout.writeln('Silakan memasukkan jumlah uang yang diinginkan');
          int? tarikTunai = int.tryParse(stdin.readLineSync()!);
          if (tarikTunai != null && tarikTunai > 0 && tarikTunai <= saldo) {
            saldo -= tarikTunai;
            stdout.writeln('Transaksi berhasil ! Saldo anda Rp $saldo');
          } else if (tarikTunai != null && tarikTunai > saldo) {
            stdout.writeln('Saldo anda tidak mencukupi ˙◠˙');
          } else {
            stdout.writeln('Input tidak valid');
          }
          break;
        default:
          stdout
              .writeln('Silakan pilih salah satu dari pilihan yang disediakan');
          continue;
      }

      stdout.writeln(
          "Transaksi lagi, yuk? Ketik 'y' kalau lanjut, atau huruf apa saja kalau udahan ˆᵕˆ");
      String? lanjutan = stdin.readLineSync();

      if (lanjutan?.toLowerCase() != 'y') {
        stdout.writeln(
            'Transaksi anda sudah selesai, terima kasih atas transaksi anda ٩(^ᗜ^ )و- ');
        break;
      }
    }
    break;
  }
}
