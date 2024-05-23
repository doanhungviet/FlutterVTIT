import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Efficient List Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<int> _data = [];
  int _page = 1;
  bool _isLoading = false;
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
    _loadData();
  }

  void _scrollListener() {
    _scrollPosition = _scrollController.position.pixels;
    if (_scrollController.position.atEdge &&
        _scrollController.position.pixels != 0) {
      _loadNextPage();
    }
  }

  Future<void> _loadData() async {
    setState(() {
      _isLoading = true;
    });

    // Simulate loading data
    await Future.delayed(const Duration(seconds: 2));

    for (int i = 0; i < 10; i++) {
      _data.add((_page - 1) * 10 + i);
    }

    setState(() {
      _isLoading = false;
    });

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _scrollController.jumpTo(_scrollPosition);
    });
  }

  Future<void> _loadNextPage() async {
    _page++;
    await _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Efficient List Example'),
      ),
      body: _isLoading
          ? const Center(
        child: CircularProgressIndicator(),
      )
          : ListView.separated(
        controller: _scrollController,
        itemCount: _data.length + 1,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          if (index < _data.length) {
            return ListTile(
              title: Text('Item ${_data[index]}'),
            );
          } else {
            return GestureDetector(
              onTap: _loadNextPage,
              child: const ListTile(
                title: Text('Load More...'),
              ),
            );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
