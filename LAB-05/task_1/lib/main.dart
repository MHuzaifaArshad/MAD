import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Implicit Animations',
            style: TextStyle(color: const Color.fromARGB(255, 247, 246, 246)),
          ),
          backgroundColor: Colors.black,
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  bool _animate = false;
  bool _toggle = false;
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
            height: _animate ? 200 : 100,
            width: _animate ? double.infinity : 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: _animate
                    ? [Colors.green, Colors.black]
                    : [const Color.fromARGB(255, 182, 220, 183), Colors.black],
              ),
              borderRadius: BorderRadius.circular(_animate ? 50 : 0),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _animate = !_animate;
              });
            },
            child: Text('Animate Container'),
          ),
          SizedBox(height: 20),
          AnimatedOpacity(
            opacity: _toggle ? 1 : 0,
            duration: Duration(seconds: 1),
            child: Text(
              'TEXT WIDGET',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _toggle = !_toggle;
              });
            },
            child: Text('Toggle Text Visibility'),
          ),
        ],
      ),
    );
  }
}
