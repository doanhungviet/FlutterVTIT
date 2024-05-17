void main() {
  //final
  final int a = 10;
  print(a); // In ra: 10

  final DateTime now = DateTime.now();
  print(now); // In ra thời gian hiện tại

  // Không thể gán lại giá trị cho a
  // a = 20; // Sẽ gây ra lỗi biên dịch

  // const
   const int b = 20;
  print(b); // In ra: 20

  const double pi = 3.14159;
  print(pi); // In ra: 3.14159

  // Không thể gán lại giá trị cho b
  // b = 30; // Sẽ gây ra lỗi biên dịch
}