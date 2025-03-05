import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Row Example',
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
        title: const Text('Row Widget Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            const FlutterLogo(size: 50), // Tambahkan ukuran agar lebih rapi
            const SizedBox(width: 10), // Beri jarak antara logo dan teks
            const Expanded(
              child: Text(
                "Flutter's hot reload helps you quickly and easily experiment, build UIs, "
                "add features, and fix bugs faster. Experience sub-second reload times, "
                "without losing state, on emulators, simulators, and hardware for iOS and Android.",
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(width: 10), // Beri jarak antara teks dan ikon
            const Icon(Icons.sentiment_very_satisfied, size: 40),
          ],
        ),
      ),
    );
  }
}
