import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nested Rectangles with Image',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Container(
          alignment: Alignment.center,
          child: const Text('Lab #03'),
        )),
        body: Container(
          child: Container(
            // Width of the outer rectangle
            height: 200,
            color: const Color.fromARGB(
                255, 0, 0, 0), // Color of the outer rectangle
            alignment: Alignment.center,
            // Center alignment for inner rectangle
            child: Container(
              width: 300, // Width of the inner rectangle
              height: 150, // Height of the inner rectangle
              decoration: BoxDecoration(
                color: const Color.fromARGB(
                    255, 232, 10, 10), // Red rectangle color
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,

              child: Container(
                  height: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRect(
                    child: Image.asset(
                      'assets/1.jpeg', // Add your image path here
                      fit: BoxFit.contain,
                      // Adjust the image to cover the rectangle
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
