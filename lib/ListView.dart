import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Example'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.amber[600],
            child: const Center(
              child: Text('Entry A'),
            ),
          ),
          const SizedBox(height: 8), // Memberi jarak antar item
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(
              child: Text('Entry B'),
            ),
          ),
          const SizedBox(height: 8), // Memberi jarak antar item
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(
              child: Text('Entry C'),
            ),
          ),
        ],
      ),
    );
  }
}
