List<int> range(int num1,int num2){
  List<int> numbers = [];
  if (num1<num2) {
    for (int i=num1; i<num2; i++){
      numbers.add(i);
    }
  }else {
    for (int j=num1; j>num2; j--){
      numbers.add(j);
    }
  }
  return numbers;
}


void main(){
  print(range(2, 7));
  print(range(11, 7));
}