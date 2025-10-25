import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Flutter App',
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
        title: const Text('First Flutter App'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Слово "It's" - жирний синій текст
            const Text(
              "It's",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 10),
            
            // Слово "my" - зелений текст з тінню
            Text(
              "my",
              style: TextStyle(
                fontSize: 32,
                color: Colors.green[700],
                fontWeight: FontWeight.w600,
                shadows: [
                  Shadow(
                    blurRadius: 3.0,
                    color: Colors.grey.withOpacity(0.5),
                    offset: const Offset(2.0, 2.0),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            
            // Слово "first" - червоний текст з підкресленням
            const Text(
              "first",
              style: TextStyle(
                fontSize: 26,
                color: Colors.red,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationThickness: 2.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            
            // Слово "application" - фіолетовий текст з заокругленням
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.purple[50],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.purple, width: 2),
              ),
              child: Text(
                "application",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.purple[800],
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 10),
            
            // Слово "in" - простий сірий текст
            const Text(
              "in",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 10),
            
            // Слово "Flutter" - градієнтний текст
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [Colors.orange, Colors.pink],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ).createShader(bounds),
              child: const Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      // Додаткове оформлення - плаваюча кнопка
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.star, color: Colors.white),
      ),
    );
  }
}