import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimationScreen(),
    );
  }
}

class AnimationScreen extends StatefulWidget {
  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this, // Ticker to manage frames
    );

    _animation = Tween<double>(begin: -300, end: 300).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose controller to avoid memory leaks
    super.dispose();
  }

  // Start/Stop animation
  void _toggleAnimation() {
    if (_controller.isAnimating) {
      _controller.stop(); // Stop animation
    } else if (_controller.isCompleted) {
      _controller.reverse(); // Reverse if completed
    } else {
      _controller.forward(); // Start forward animation
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Explicit Animation',
          style: TextStyle(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(_animation.value, 0), // Moves widget on x-axis
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient:
                            LinearGradient(colors: [Colors.red, Colors.blue])),
                    // The animated box
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            SizedBox(
              child: ElevatedButton(
                onPressed: _toggleAnimation,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Background color
                ),
                child: Text(
                  _controller.isAnimating ? 'Stop' : 'Start',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 232, 231, 237)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
