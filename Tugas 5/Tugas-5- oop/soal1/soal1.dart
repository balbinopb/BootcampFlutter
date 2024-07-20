void main() {
  double alas=20.0;
  double tinggi = 30.0;
  var segitiga = LuasSegitiga(alas,tinggi);
  print(segitiga.hitungLuas());
}

class LuasSegitiga {
  double setengah = 0.5;
  double alas;
  double tinggi;

  LuasSegitiga(this.alas, this.tinggi);

  double hitungLuas() => setengah * alas * tinggi;
  
}
