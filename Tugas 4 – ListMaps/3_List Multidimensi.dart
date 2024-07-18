void dataHandling(List<List<String>> data) {
  for (int i=0; i<data.length; i++) {
    var entry=data[i];
    print('Nomor Id: ${entry[0]}');
    print('Nama Lengkap: ${entry[1]}');
    print('TTl: ${entry[2]} ${entry[3]}');
    print('Hobby: ${entry[4]}');
    print('');
    print(data.length);
  }
}


void main() {
  var input = [
  ['0001', 'Roman Alamsyah', 'Bandar Lampung', '21/05/1989', 'Membaca'],
  ['0002', 'Dika Sembiring', 'Medan', '10/10/1992', 'Bermain Gitar'],
  ['0003', 'Winona', 'Ambon', '25/12/1965', 'Memasak'],
  ['0004', 'Bintang Senjaya', 'Martapura', '6/04/1970', 'Berkebun']
];
  dataHandling(input);
}





