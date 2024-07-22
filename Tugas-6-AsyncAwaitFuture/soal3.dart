// void line() {
//   print('pernahkan kau merasa......');
// }

// void line2() {
//   print('pernahkan kau merasa......');
// }

// void line3() {
//   print('pernahkan kau merasa.......');
// }

// void line4() {
//   print('Hatimu hampa,pernahkan kau merasa,hati mu kosong');
// }

// void main()async {
//   print('Ready. sing');
//   await Future<void>.delayed(Duration(seconds: 5));
//   line();
//   await Future<void>.delayed(Duration(seconds: 3));
//   line2();
//   await Future<void>.delayed(Duration(seconds: 2));
//   line3();
//   await Future<void>.delayed(Duration(seconds: 1));
//   line4();
// }

void line() {
  print('pernahkan kau merasa....');
}

void line2() {
  print('pernahkan kau merasa.....');
}

void line3() {
  print('pernahkan kau merasa......');
}

void line4() {
  print('Hatimu hampa, pernahkan kau merasa, hati mu kosong');
}

Future<void> delayedPrint(Duration duration, Function callback) async {
  await Future.delayed(duration);
  callback();
}

void main() async {
  print('Ready. sing');
  await delayedPrint(Duration(seconds: 5), line);
  await delayedPrint(Duration(seconds: 3), line2);
  await delayedPrint(Duration(seconds: 2), line3);
  await delayedPrint(Duration(seconds: 1), line4);
}