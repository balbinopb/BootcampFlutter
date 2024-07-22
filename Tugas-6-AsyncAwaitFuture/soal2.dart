void main(){
 print('life');
 Future.delayed(Duration()).then((_){
  print('never flat');
 });
 
 print('is');
}