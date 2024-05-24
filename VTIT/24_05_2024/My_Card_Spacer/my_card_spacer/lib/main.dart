import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    List<String> itemList = [
      'Danh sách 1',
      'Danh sách 2',
      'Danh sách 3',
      'Danh sách 4',
      'Danh sách 5',
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ví dụ về mục danh sách tùy chỉnh'),
        ),
        body: ListView.builder(
            itemCount: itemList.length,
            itemBuilder: (BuildContext context, int index){
              return CustomListItem(
                title: itemList[index],
                onTap: (){
                  print('Đã nhấn vào mục: $index');
                }
              );
            },
        ),
      ),
    );
  }
}
class CustomListItem extends StatelessWidget {

  final String title;
  final VoidCallback onTap;
  const CustomListItem({
    Key? key,
    required this.title,
    required this.onTap,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Text(title,
                style: const TextStyle(fontSize: 18),
              ),
              const Spacer(),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}



