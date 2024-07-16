void main() {
                
  var sentence = 'i am studying basic dart right now';
  

  // i is on index 0
  var firstWord=sentence[0];
  // am is on index 2 and 3
  var secondWord=sentence[2]+sentence[3];
  // studying on index 5 until 12
  var thirdWord=sentence[5]+sentence[6]+sentence[7]+sentence[8]+sentence[9]+sentence[10]+sentence[11]+sentence[12];
  //basic on index 14 until 18
  var fourthWord=sentence[14]+sentence[15]+sentence[16]+sentence[17]+sentence[18];
  // dart on index 20 until 23
  var fifthWord=sentence[20]+sentence[21]+sentence[22]+sentence[23];
  // right : on index 25 until 29
  var sixththWord=sentence[25]+sentence[26]+sentence[27]+sentence[28]+sentence[29];
  // now : on index 31 until 33
  var seventhhWord=sentence[31]+sentence[32]+sentence[33];

print('firstWord : '+firstWord);
print('secondWord : '+secondWord);
print('thirdWord : '+thirdWord);
print('fourthWord : '+fourthWord);
print('fifthWord : '+fifthWord);
print('sixththWord : '+sixththWord);
print('seventhhWord : '+seventhhWord);

}

