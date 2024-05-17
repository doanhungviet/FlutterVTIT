
void main(){
  logInfor();
  logFullName('Doan Hung Viet');
  print('a+b = ${tinhTong(4, 6)}');
  check();
}
void logInfor(){
  print('Viet');
}
void logFullName(String name){
  print(name);
}
int tinhTong(int a, int b){
 return a+b;
}

void check({int a =4, int b=5, int c=6}){
  print(a);
  print(b);
  print(c);
}