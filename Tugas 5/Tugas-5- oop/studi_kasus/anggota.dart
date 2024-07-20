class Anggota {
  String nama;
  String idAnggota;
  String alamat;

  Anggota(this.nama, this.idAnggota, this.alamat);

  void daftarAnggota() {
    print('Anggota "$nama" berhasil didaftarkan.');
  }

  void hapusAnggota() {
    print('Anggota "$nama" berhasil dihapus.');
  }

  void editAnggota({String? namaBaru, String? alamatBaru}) {
    if (namaBaru != null) nama = namaBaru;
    if (alamatBaru != null) alamat = alamatBaru;
    print('Data anggota diupdate menjadi: Nama: $nama, Alamat: $alamat.');
  }

  void tampilkanInfo() {
    print('Nama: $nama, ID Anggota: $idAnggota, Alamat: $alamat');
  }
}
