import 'dart:io';

void main(){

 stdout.write('install dart application ? ');
 //input Y or T
 var answer = stdin.readLineSync();

 if (answer=='Y') {
  print('you will instal dart application');
 }
 if (answer=='T') {
  print('Aborted');
 }
}