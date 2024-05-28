import 'package:flutter/material.dart';

import '../models/user.dart';

class FourthScreen extends StatelessWidget {

  final User user;

  FourthScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Màn hình nhận dữ diệu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${user.name}'),
            Text('Age: ${user.age}'),
            Text('Email: ${user.email}'),
          ],
        ),
      ),
    );
  }
}
