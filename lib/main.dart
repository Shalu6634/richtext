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
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'RichText Example',
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: 'Single ',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2)),
              TextSpan(
                  text: ' Line ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      backgroundColor: Colors.teal,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2)),
              TextSpan(
                  text: '  Multiple',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 25,
                      letterSpacing: 1),),
              TextSpan(
                  text: '  Style',
                  style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontStyle: FontStyle.italic)),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
