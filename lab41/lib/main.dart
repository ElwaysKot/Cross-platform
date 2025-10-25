import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "It’s",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "my",
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "first",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.cyan,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.5,
                ),
              ),
              Text(
                "application",
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.orange,
                  decoration: TextDecoration.lineThrough,
                  fontFamily: 'Courier',
                ),
              ),
              Text(
                "in Flutter",
                style: TextStyle(
                  fontSize: 70,
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
