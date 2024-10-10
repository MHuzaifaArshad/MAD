import 'package:flutter/material.dart';

void main() {
  runApp(const UI());
}

class UI extends StatelessWidget {
  const UI({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Widget Tree for a simple UI",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 239, 235, 235)),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            Text(
              "Text Widget",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 174, 23, 12),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint('Button Pressed');
              },
              child: Text(
                'DO NOT PRESS',
                style: TextStyle(color: Colors.red),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Icon(
              Icons.lightbulb,
              size: 34,
              color: const Color.fromARGB(255, 191, 173, 12),
            )
          ],
        ),
      ),
    );
  }
}
