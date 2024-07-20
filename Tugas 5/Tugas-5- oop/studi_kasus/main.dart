import 'buku.dart';
import 'anggota.dart';
import 'peminjaman.dart';
import 'petugas.dart';

void main() {
  // Contoh penggunaan kelas-kelas
  Buku buku1 = Buku("Pemrograman Dart", "John Doe", "9876543210", 3);
  Anggota anggota1 = Anggota("Jane Smith", "A002", "Jl. Sudirman No. 2");
  Petugas petugas1 = Petugas("Admin", "P001");

  // Contoh login petugas
  petugas1.login('password123');

  // Contoh kelola buku oleh petugas
  petugas1.kelolaBuku(buku: buku1, aksi: 'tambah', jumlah: 3);
  petugas1.kelolaBuku(buku: buku1, aksi: 'hapus', jumlah: 2);

  // Edit buku dimasukkan untuk membedakan buku
  Buku editBuku = Buku('Pemrograman Baru', 'Joko Tingkir', '978-602-8519-93', 2);
  petugas1.kelolaBuku(buku: buku1, aksi: 'edit', editBuku: editBuku);

  // Contoh peminjaman buku oleh anggota
  Peminjaman peminjaman1 = Peminjaman(buku1, anggota1, DateTime.now());
  peminjaman1.pinjamBuku();
  peminjaman1.lihatRiwayat();

  // Contoh pengembalian buku oleh anggota
  peminjaman1.kembalikanBuku();
  peminjaman1.lihatRiwayat();
}
