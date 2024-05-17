var list1 = [];
List<int> numbers = [];

void main(){
  //kiem tra so phan tu
  // print(list1.length);
  // print(numbers.length);

  //them phan tu
  // list1.add(1);
  // list1.add('viet');

  //duyet danh sach
  // list1.forEach((i){
  //   print(i.runtimeType);
  //   print(i);
  // });
  numbers.add(3);
  numbers.add(4);
  numbers.add(5);
  // numbers.forEach((i){
  //    print(i.runtimeType);
  //    print(i);
  //  });
  //  print(numbers.length);
  //  print(numbers.first);
  //  print(numbers.last);
  //  print(numbers[1]);
  //  print(numbers.isEmpty);
  //  print(numbers.isNotEmpty);

   list1.add(1);
   list1.add(2);
   list1.addAll(numbers);
   list1.insert(0, 0);
   list1.insert(2,10);
   list1.remove(10);

   list1.reversed.forEach((i){
     print(i.runtimeType);
     print(i);
   });
}