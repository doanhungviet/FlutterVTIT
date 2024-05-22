import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(), // Thay vì trả về MaterialApp trực tiếp, trả về MyHomePage
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Khai báo biến để lưu trữ giá trị được chọn
  String? dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown Button Example'),
      ),
      body: Center(
        child: DropdownButton<String>(
          value: dropdownValue, // Sử dụng giá trị từ biến dropdownValue
          onChanged: (String? newValue) {
            // Cập nhật giá trị mới khi một mục được chọn
            setState(() {
              dropdownValue = newValue;
            });
            print('New value: $newValue');
          },
          items: <String>['One', 'Two', 'Three', 'Four'] // Danh sách các mục
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
