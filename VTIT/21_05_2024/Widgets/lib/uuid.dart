// Expense Data Model with a Unique ID ( mô
//hình dữ liệu chi phí
//Exploring Initializer Lists( Danh
// sách trình khởi tạo

import 'package:demo_widget/uuid.dart';
import 'package:uuid/uuid.dart';

class Expense{
  final String id;
  final String name;
  final double amount;
  final DateTime date;

// Sử dụng Initializer List để gán giá trị cho các thuộc tính

  Expense({
    required this.name,
    required this.amount,
    required this.date,
  }):id = const Uuid().v4();

  @override
  String toString() {
    return 'Expense{id: $id, name: $name, amount: $amount, date: $date}';
  }
}