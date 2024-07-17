void main(){
  int i=1;
  while (i<=20){
    if (i%3==0 && i%2==1){
      print('$i - I love coding');
    }else if (i%2==1){
      print('$i - Santai');
    }else{
      print('$i - Berkualitas');
    }
    i++;
  }

}