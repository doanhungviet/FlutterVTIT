void main(){
  int a =10;
  double? b;
  print(a);
  print(a.runtimeType);
  print(b);

  num c = 5.5;
  print(c.runtimeType);

  double d = 1.0;
  print(d.runtimeType);
  print(d);

  int age = 21;
  String str1 = 'Viet\n$age tuoi';
  print(str1.runtimeType);
  print(str1);

  bool check = false;
  print(check.runtimeType);
  print(check);

  int age2 = 18;
  String strAge = age2.toString();
  print(strAge.runtimeType);
  print(strAge);

  String strDouble = '6.6';
  double doubleValue = double.parse(strDouble);
  print(doubleValue.runtimeType);
  print(doubleValue);
}