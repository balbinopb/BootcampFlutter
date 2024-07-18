List<int> rangeWithStep(int num1,int num2,int step){
  List<int> numbers = [];
  if (num1>num2){
    for (int i=num1; i>num2; i-=step){
      numbers.add(i);
    }
  }else {
    for (int i=num1; i<num2; i+=step){
      numbers.add(i);
    }
  }
  return numbers;
}


void main(){
  print(rangeWithStep(30,23,3));
  print(rangeWithStep(12,23,4));
 
}