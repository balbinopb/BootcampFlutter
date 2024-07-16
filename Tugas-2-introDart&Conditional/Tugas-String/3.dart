import 'dart:io';

void main() {
  stdout.write('Enter your first name: ');
  var firstName = stdin.readLineSync();
  
  stdout.write('Enter your last name: ');
  var lastName = stdin.readLineSync();
  
  print('Your full name is: $firstName $lastName');
}
