import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TimerScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TimerScreen extends StatefulWidget {
  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  int _countdownTime = 10; // Set initial countdown time
  bool _isRunning = false;

  void startTimer() async {
    setState(() {
      _isRunning = true;
    });
    for (int i = _countdownTime; i > 0; i--) {
      await Future.delayed(Duration(seconds: 1), () {
        setState(() {
          _countdownTime--;
        });
      });
    }
    setState(() {
      _isRunning = false;
    });
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Time's Up!"),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text("OK"),
          ),
        ],
      ),
    );
  }

  void resetTimer() {
    setState(() {
      _countdownTime = 10;
      _isRunning = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timer App'),
        centerTitle: true,
        backgroundColor: Colors.black,
        titleTextStyle: TextStyle(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_countdownTime',
              style: TextStyle(
                  fontSize: 40, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isRunning ? null : startTimer,
              child: Text(
                'Start Timer',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Black button background
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _isRunning ? null : resetTimer,
              child: Text('Reset Timer'),
            ),
          ],
        ),
      ),
    );
  }
}
