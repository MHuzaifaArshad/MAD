import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 1;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 1) counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Decrement button
        GestureDetector(
          onTap: decrementCounter,
          child: Container(
            width: 28,
            height: 28,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: const Color(0xffEAEAEA)),
            ),
            child: Text(
              "-",
              style: GoogleFonts.sora(
                color: const Color(0xffAAADB0),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        // Display counter value
        Text(
          "$counter",
          style: GoogleFonts.sora(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        // Increment button
        GestureDetector(
          onTap: incrementCounter,
          child: Container(
            width: 28,
            height: 28,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: const Color(0xffEAEAEA)),
            ),
            child: Text(
              "+",
              style: GoogleFonts.sora(
                color: const Color(0xffAAADB0),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
