class Lingkaran{
  late double _ruas;
  final phi =3.14;

  void setRuas (double value){
    if (value<0){
      value=-value;
    }
    _ruas=value;
  }
  double getRuas (){
    return _ruas;
  }

  double hitungRuas(){
    return this._ruas*this._ruas*phi;
  }
}