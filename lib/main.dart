import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice app',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('responsive practice')),
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return _mobileLayout();
        } else {
          return _webLayout();
        }
      }),
    );
  }

  Widget _mobileLayout() {
    return const Center(
      child: Text(
        'Mobile layout',
        style: TextStyle(fontSize: 24),
      ),
    );
  }

  Widget _webLayout() {
    return const Center(
      child: Text(
        'Mobile layout',
        style: TextStyle(fontSize: 32),
      ),
    );
  }
}
