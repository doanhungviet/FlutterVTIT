import 'dart:math';

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class Expense {
  final String id;
  final String name;
  final double amount;
  final DateTime date;

  Expense({
    required this.name,
    required this.amount,
    required this.date,
  }) : id = Uuid().v4();

  @override
  String toString() {
    return 'Expense {id: $id, name: $name, amount: $amount, date: $date}';
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{

  int _counter = 0;
  List<Expense> expenses = [];

  void _addInitialExpense() {
    Expense expense1 = Expense(
      name: 'Mua sắm',
      amount: 150.0,
      date: DateTime.now(),
    );

    expenses.add(expense1);
  }

  void _addExpense() {
    setState(() {
      Expense newExpense = Expense(
        name: 'Mua sắm thêm',
        amount: 200.0,
        date: DateTime.now(),
      );
      expenses.add(newExpense);
    });
  }

  //initState là một phương thức quan trọng trong việc quản lý trạng thái
  //của các widget trong Flutter
  @override
  void initState() {
    super.initState();
    // Thực hiện các tác vụ khởi tạo ban đầu ở đây.
    _khoiTaoCounter();
  }

  void _khoiTaoCounter(){
    _counter = 10;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets',
        style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Hello',
              style: TextStyle(fontSize: 24)
            ),
            const Text('World',
              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)
            ),
            const Text('Counter'),
            Text('$_counter',style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    _counter++;
                  });
                },
                child: const Text('Button'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _addExpense,
              child: const Text('Add Expense'),
            ),
            const SizedBox(height: 20),
            Expanded(
                child: ListView.builder(
                  itemCount: expenses.length,
                    itemBuilder: (context,index){
                      final expense = expenses[index];
                      return ListTile(
                          title: Text(expense.name),
                        subtitle: Text('${expense.amount} - ${expense.date}'),
                      );
                    }
                )
            ),
          ],
        ),
      ),
    );
  }
}

