import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          child: const Text(
            'Flutter Widgets',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/th.jpg',
              height: 150,
            ),
            Text('Flutter', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            // Row with icons and text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(Icons.thumb_up, color: Colors.blue, size: 40),
                SizedBox(width: 10),
                Text('Like', style: TextStyle(fontSize: 24)),
                SizedBox(width: 20),
                Icon(Icons.comment, color: Colors.green, size: 40),
                SizedBox(width: 10),
                Text('Comment', style: TextStyle(fontSize: 24)),
              ],
            ),
            const SizedBox(height: 30),
            // ElevatedButton at the bottom
            ElevatedButton(
              onPressed: () {
                debugPrint('Button Pressed');
              },
              child: const Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
