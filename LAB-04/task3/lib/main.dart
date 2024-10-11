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
      title: 'ListView UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 57, 54, 44),
          title: Text(
            "Scroll View List",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            createItem(icon: Icons.person, text: '1'),
            createItem(icon: Icons.person, text: '2'),
            createItem(icon: Icons.person, text: '3'),
            createItem(icon: Icons.person, text: '4'),
            createItem(icon: Icons.person, text: '5'),
            createItem(icon: Icons.person, text: '6'),
            createItem(icon: Icons.person, text: '7'),
            createItem(icon: Icons.person, text: '8'),
            createItem(icon: Icons.person, text: '9'),
            createItem(icon: Icons.person, text: '10'),
          ],
        ));
  }

  Container createItem({required IconData icon, required String text}) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.black38],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
          leading: Icon(icon, color: Colors.white),
          title: Card(
            color: Colors.transparent, // Transparent to let gradient show
            elevation: 0, // No shadow
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ));
  }
}
