import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class FormRegistry {
  // Dùng một Map để lưu trữ các biểu mẫu và khóa tương ứng
  static Map<String, Widget> _registry = {};

  // Phương thức này được sử dụng để đăng ký biểu mẫu với một khóa cho trước
  static void registerForm(String key, Widget formWidget) {
    _registry[key] = formWidget;
  }

  // Phương thức này để lấy biểu mẫu dựa trên một khóa
  static Widget? getFormWidget(String key) {
    return _registry[key];
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Đăng ký một biểu mẫu với khóa "example_form"
    FormRegistry.registerForm('example_form', ExampleForm());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Lấy biểu mẫu từ FormRegistry bằng cách sử dụng khóa "example_form"
            Widget? formWidget = FormRegistry.getFormWidget('example_form');
            if (formWidget != null) {
              // Hiển thị biểu mẫu nếu nó tồn tại
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => formWidget),
              );
            } else {
              // Xử lý trường hợp không tìm thấy biểu mẫu
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Error'),
                  content: const Text('Form not found!'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
            }
          },
          child: const Text('Open Form'),
        ),
      ),
    );
  }
}

class ExampleForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Form'),
      ),
      body: const Center(
        child: Text('This is an example form.'),
      ),
    );
  }
}
