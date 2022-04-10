import 'package:flutter/material.dart';
import '../constants/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zen',
      theme: themeData(),
      home: const MyHomePage(title: 'Nirvana log'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.pause),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.double_arrow),
          ),
        ],
      ),
      body: Image.network(
        'https://i.pinimg.com/564x/e6/5a/07/e65a07f5afef739312ee22b8975b21f0.jpg',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
