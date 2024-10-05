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
          ),
        ),
        body: Stack(
          children: [
            // Existing nested rectangles
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 200,
                width: double
                    .infinity, // Adjusted to fit centered nested containers
                color: const Color.fromARGB(255, 0, 0, 0),
                alignment: Alignment.center,
                child: Container(
                  width: 300,
                  height: 150,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 232, 10, 10),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: Container(
                    height: 120,
                    width: 250,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 253, 253, 253),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        'assets/1.jpeg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Overlaying squares positioned below the nested rectangles
            Positioned(
              top: 250, // Position below the nested rectangles
              left: 50,
              child: Container(
                height: 200,
                width: 200,
                color: const Color.fromARGB(255, 47, 34, 191),
              ),
            ),
            Positioned(
              top: 220,
              left: 175,
              child: Container(
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 77, 221, 29),
              ),
            ),
            Positioned(
              top: 260,
              left: 200,
              child: Container(
                height: 400,
                width: 100,
                color: const Color.fromARGB(255, 243, 33, 33),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(9, (index) {
                      return Text(
                        '${index + 1}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            Positioned(
                top: 660,
                left: 65,
                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                      'Practice more than this it will help you design',
                      maxLines: 2,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                )),
            Positioned(
                top: 680,
                left: 115,
                child: Container(
                  alignment: Alignment.center,
                  child: const Text(' more complex Mobile App Design',
                      maxLines: 2,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                )),

            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 150,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 100, 247, 105),
                  alignment: Alignment.center,
                  child: Container(
                    height: 100,
                    width: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/th.jpeg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                )),
            Positioned(
                top: 770,
                left: 40,
                child: Container(
                  alignment: Alignment.center,
                  child: const Text('LEADING',
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                )),
            Positioned(
                top: 770,
                left: 350,
                child: Container(
                  alignment: Alignment.center,
                  child: const Text('TRAILING',
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                )),
          ],
        ),
      ),
    );
  }
}
