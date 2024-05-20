import 'dart:async';

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Dữ liệu từ server';
}

void main() async {
  print('Bắt đầu lấy dữ liệu');
  String data = await fetchData();
  print('Dữ liệu đã lấy: $data');
  print('Hoàn thành!');
}
