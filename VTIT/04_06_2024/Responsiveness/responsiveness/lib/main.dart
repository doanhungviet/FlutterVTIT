import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375,812),
      builder: (BuildContext context, Widget? child) => MaterialApp(
        title: 'Responsiveness Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ResponsiveHomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
class ResponsiveHomePage extends StatelessWidget {
  const ResponsiveHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Responsiveness Example'
        ),
      ),
      body: LayoutBuilder(
        builder: (context,contraints){
          if(contraints.maxWidth<600){
            return _buildMobileLayout();
          }else{
            return _buildTabletLayout();
          }
        }
      ),
    );
  }
}
Widget _buildMobileLayout() {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100.w, // Responsive width
            height: 100.h, // Responsive height
            color: Colors.blue,
            child: Center(child: Text('Mobile', style: TextStyle(fontSize: 20.sp))),
          ),
          SizedBox(height: 20.h),
          Text('This is a mobile layout', style: TextStyle(fontSize: 18.sp)),
        ],
      ),
    ),
  );
}

Widget _buildTabletLayout() {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150.w, // Responsive width
                height: 150.h, // Responsive height
                color: Colors.green,
                child: Center(child: Text('Tablet', style: TextStyle(fontSize: 24.sp))),
              ),
              Container(
                width: 150.w, // Responsive width
                height: 150.h, // Responsive height
                color: Colors.orange,
                child: Center(child: Text('Tablet', style: TextStyle(fontSize: 24.sp))),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Text('This is a tablet layout', style: TextStyle(fontSize: 22.sp)),
        ],
      ),
    ),
  );
}



