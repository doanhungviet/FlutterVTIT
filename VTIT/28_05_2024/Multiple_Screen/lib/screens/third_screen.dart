import 'package:flutter/material.dart';
import 'package:multiple_screen/screens/fourth_screen.dart';
import 'package:multiple_screen/models/user.dart';

class ThirtdScreen extends StatelessWidget {
  const ThirtdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Màn hình truyền dữ liệu'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            User user = User(name: 'Việt',age: 22, email: 'doanhungviet77@gmail.com');
            Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => FourthScreen(user: user),
              ),
            );
          },
          child: const Text('Go to Fourth Screen'),
        ),
      ),
    );
  }
}
