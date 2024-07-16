import 'dart:io';

void main(){

 stdout.write('Masukan hari: ');
 var hari = stdin.readLineSync();

 switch (hari){
  case 'senin':
    print('Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.');
  case 'selasa':
    print('Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.');
  case 'rabu':
    print('Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.');
  case 'kamis':
    print('Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.');
  case 'jumat':
    print('Hidup tak selamanya tentang pacar.');
  case 'sabtu':
    print('Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.');
  case 'minggu':
    print('Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.');
  default:
    print('masukan nama hari yang benar');
 }
}