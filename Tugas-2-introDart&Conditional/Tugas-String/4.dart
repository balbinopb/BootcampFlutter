import 'dart:io';

void main() {
  var a = int.parse(stdin.readLineSync()!);
  var b = int.parse(stdin.readLineSync()!);

  print('Multiplication: ${a * b}');
  print('Division: ${a / b}');
  print('Addition: ${a + b}');
  print('Subtraction: ${a - b}');
}
