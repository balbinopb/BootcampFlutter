import 'dart:io';

void main() {
  stdout.write('Nama: ');
  var Nama = stdin.readLineSync();
  stdout.write('Peran: ');
  var Peran = stdin.readLineSync();

  if (Nama == null || Nama.isEmpty) {
    print('Nama harus diisi!');
  } else if (Peran == null || Peran.isEmpty) {
    print('Halo $Nama, Pilih peranmu untuk memulai game!');
  } else {
    if (Peran == 'Penyihir') {
      print('Selamat datang di Dunia Werewolf, $Nama.');
      print('Halo Penyihir $Nama, kamu dapat melihat siapa yang menjadi werewolf!');
    } else if (Peran == 'Guard') {
      print('Selamat datang di Dunia Werewolf, $Nama. ');
      print('Halo Guard $Nama, kamu akan membantu melindungi temanmu dari serangan werewolf.');
    } else if (Peran == 'Werewolf') {
      print('Selamat datang di Dunia Werewolf, $Nama. ');
      print('Halo Werewolf $Nama, Kamu akan memakan mangsa setiap malam!');
    } else {
      print('Peran yang dipilih tidak dikenal');
    }
  }
}
