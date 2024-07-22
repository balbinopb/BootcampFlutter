void main()async{
  var h=Human();
  print('Luffy');
  print('Zorro');
  print('Killer');
  print(h.name);
  await h.getName();
  print(h.name);
}

class Human {
  String name ='nama character one piece';

  // void getName()async{
  //   name ='Rafi';
  //   print('get data[done]');
  // }
  Future<void> getName () async{
    await Future.delayed(Duration(seconds: 3));
    name= 'Rafi';
    print('get data[done]');
  } 
}