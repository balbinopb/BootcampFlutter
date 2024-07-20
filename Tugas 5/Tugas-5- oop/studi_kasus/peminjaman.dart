import 'buku.dart';
import 'anggota.dart';

class Peminjaman {
  Buku buku;
  Anggota anggota;
  DateTime tanggalPinjam;
  DateTime? tanggalKembali;

  Peminjaman(this.buku, this.anggota, this.tanggalPinjam, [this.tanggalKembali]);

  void pinjamBuku() {
    print('====proses pinjaman buku====');
    print('${anggota.nama} meminjam buku "${buku.judul}" pada tanggal $tanggalPinjam.');
    print('==============================\n');
  }

  void kembalikanBuku() {
    print('====proses pengembalian buku====');
    tanggalKembali = DateTime.now();
    print('${anggota.nama} mengembalikan buku "${buku.judul}" pada tanggal $tanggalKembali.');
    print('==============================\n');
  }

  void lihatRiwayat() {
    print('====proses lihat riwayat pinjaman buku====');
    print('Riwayat Peminjaman: ${anggota.nama} meminjam "${buku.judul}" pada $tanggalPinjam');
    print('dan belum dikembalikan');
    if (tanggalKembali != null) {
      print(' dan mengembalikan pada tanggal $tanggalKembali.');
    }
    print('==============================\n');
  }
}
