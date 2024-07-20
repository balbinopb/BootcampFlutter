import 'buku.dart';
import 'anggota.dart';

class Petugas {
  String nama;
  String idPetugas;

  Petugas(this.nama, this.idPetugas);

  bool login(String password) {
    if (password == 'password123') {
      print('$nama berhasil login.');
      return true;
    } else {
      print('Login gagal: password salah.');
      return false;
    }
  }

  Future<void> kelolaBuku({
    required Buku buku,
    Buku? editBuku,
    required String aksi,
    int? jumlah}) async {
    if (aksi == 'tambah') {
      print('====tambah Buku====');
      buku.tambahBuku(jumlah ?? 1);
      print('==============================\n');
    } else if (aksi == 'hapus') {
      print('==============================\n');
      buku.hapusBuku(jumlah ?? 1);
      print('==============================\n');
    } else if (aksi == 'edit' && editBuku != null) {
      print('=====Edit Buku=====');
      if (editBuku != null) {
        buku.editBuku(
          judulBaru: editBuku.judul,
          isbnBaru: editBuku.isbn,
          pengarangBaru: editBuku.pengarang);
      } else {
        print('Masukkan Parameter EditBuku');
      }
      print('=====Hasil Pembaharuan Buku=====');
      buku.tampilkanInfo();
      print('==============================\n');
  } }

  void kelolaAnggota(Anggota anggota, String aksi, [String? nama, String? alamat]) {
    if (aksi == 'daftar') {
      anggota.daftarAnggota();
    } else if (aksi == 'hapus') {
      anggota.hapusAnggota();
    } else if (aksi == 'edit') {
      anggota.editAnggota(namaBaru: nama, alamatBaru: alamat);
    } 
  }

  void tampilkanInfo() {
    print('Nama Petugas: $nama, ID Petugas: $idPetugas');
  }
}
