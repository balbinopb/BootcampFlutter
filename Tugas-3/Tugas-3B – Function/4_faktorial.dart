int faktorial(int number){
  if (number<=0){
    return 1;
  }
  int hasilFaktorial=1;
  for (int i=number; i>=1; i--){
    hasilFaktorial *=i;
  }
  return hasilFaktorial;
}

void main(){
  print(faktorial(6));
  print(faktorial(-2));
}