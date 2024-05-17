void main() {
  // toan tu so hoc
  int a = 5;
  int b = 3;
  
  //toan tu cong
  int result = a + b;
  print('a + b = $result');
  //toan tu tru
  int result1 = a - b;
  print('a - b = $result1');
  //toan tu nhan
  int result3 = a * b;
  print('a * b = $result3');
  //toan tu chia
  double result4 = a / b;
  print('a / b = $result4');
  //chia lay phan du
  int result5 = a % b;
  print('a % b = $result5');
  //chia lay phan nguyen
  int result6 = a ~/ b;
  print('a ~/ b = $result6');
  //toan tu gan
  int l = 5;
  int m = l;
  print('Giá trị của d là: $m');
  //cong va gan
  int s = 5;
  int n = 3;
  n += s;
  print('Giá trị của f sau khi cộng và gán là: $n');
  //tru va gan
  int i = 5;
  int k = 3;
  k -= i;
  print('Giá trị của g sau khi trừ và gán là: $k');

  int p = 30;   
   print(p++);
   print('p = $p');                   
     
  int o = 25;  
  print(++o);
  print('o = $o');                 
          
  int z = 10;  
  print(--z); 
  print('z = $z');               
    
  int u = 12;                                           
    print(u--);  
    print('u = $u');    

  //toan tu gan
   var n1 = 10;  
  var n2 = 5;  

  // +=(Add and Assign)  
  n1+=n2;  
  print("n1+=n2 = ${n1}");  

  // -=(Subtract and Assign)
  // n1-=n2;  
  // print("n1-=n2 = ${n1}");  

  // *=(Multiply and Assign)    
  // n1*=n2;  
  // print("n1*=n2 = ${n1}");  

  // ~/=(Division and Assign)    
  // n1~/=n2;  
  // print("n1~/=n2 = ${n1}");  

  // %=(Modulus and Assign)
  // n1%=n2;  
  // print("n1%=n2 = ${n1}");   


  //toan tu quan he
  // 1- >(greater than)
  print('example of >');
  int h=10;
  int g=5;
  if (h>g) {
    print(true);
    
  } else {
    print(false);
  }
  // 2- <(less than)
  print('example of <');
  if (h<g) {
    print(true);
    
  } else {
    print(false);
  }
  // 3- >=(greater than or equal to)
  print('example of >=');
  if (h>=g) {
    print(true);
    
  } else {
    print(false);
  }
  // 4- <=(less than or equal)
  print('example of <=');
  if (h<=g) {
    print(true);
    
  } else {
    print(false);
  }
  // 5- ==(is equal to)
  print('example of ==');
  if (h==g) {
    print(true);
    
  } else {
    print(false);
  }
  // 6- !=(not equal to)
  //print('example of (!= ) not equal to');
  if (h!=g) {
    print(true);
    
  } else {
    print(false);
  }
  //kiem thu kieu
  print("as ( it is used for typecast )");
  var num= 10;
  var name= 5;
  print(num as int);
  print(name is String);

  //toan tu logic

  // 1- && AND Operator
  print("AND Operator");
  var q= 100;
  var w= 100;
  var e= 200;
  var r= 200;
  //  true && true = ture
  print((q==w)&&(e==r));
  //  ture && false = false 
  print((q==w)&&(w==r));
  //  false && ture = false
  print((q==e)&&(e==r));
  //  false && false = false 
  print((q==e)&&(w==r));
  // 2- || OR Operator
  print("OR Operator");
  //  true || true = ture
  print((q==w)||(e==r));
  //  ture || false = ture
  print((q==w)||(w==r)); 
  //  false || ture = ture
  print((q==e)||(e==r));
  //  false || false = false 
  print((q==e)||(w==r));

  // 3- !  NOT Operator 
  print("NOT Operator");
  // true = false
  print(!(q==w));
  // false = true
  print(!(q==e));

  //toantu bitwise

  var d=25;
  var f=20;
  var j=0;
  // & (Binary AND)
  print('& (Binary AND)');
    print("d & f = ${d&f}");  
  // | (Binary OR)
  print('| (Binary OR)');
    print("d | f = ${d|f}");  
  // ^ (Binary XOR)
  print('^ (Binary XOR)');
  print("d ^ f = ${d^f}"); 
  // ~ ( Ones compliment)
  print('~ (Ones cpmpliment)');
  print("~d = ${(~d)}");  
  // << (Shift left)
  print('<< (Shift left)');
    j = d <<2;  
    print("c<<1= ${j}");  
  // >> (Shift right)
  print('>> (Shift right)');
  j = d >>2;  
    print("c>>1= ${j}");
}