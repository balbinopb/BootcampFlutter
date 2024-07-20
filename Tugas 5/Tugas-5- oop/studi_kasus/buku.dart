class Buku {
  String judul;
  String pengarang;
  String isbn;
  int jumlah;

  Buku(this.judul, this.pengarang, this.isbn, this.jumlah);

  void tambahBuku(int jumlahTambahan) {
    jumlah += jumlahTambahan;
    print('$judul berhasil ditambahkan.jumlah buku sekarang $jumlah');
  }

  void hapusBuku(int jumlahPengurangan) {
    if (jumlah >= jumlahPengurangan) {
      jumlah -= jumlahPengurangan;
      print('$judul berhasil dihapus.jumlah buku sekarang $jumlah');
    } else {
      print('Jumlah buku tidak mencukupi untuk dihapus.');
    }
  }

  void editBuku({String? judulBaru, String? pengarangBaru, String? isbnBaru}) {
    if (judulBaru != null) judul = judulBaru;
    if (pengarangBaru != null) pengarang = pengarangBaru;
    if (isbnBaru != null) isbn = isbnBaru;
    print('info buku berhasil diperbarui');
    print('==============================\n');
  }

  void tampilkanInfo() {
    print('Judul: $judul, Pengarang: $pengarang, ISBN: $isbn, Jumlah: $jumlah');
  }
}
