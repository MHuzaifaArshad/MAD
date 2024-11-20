import 'package:coffe_shop/utilis/navbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: size.height * 0.68,
              width: size.width,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/welcome.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Coffee so good, \nyour taste buds\n will love it.",
                    style: GoogleFonts.sora(
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: size.height * 0.010,
                  ),
                  Text(
                    "The best grain, the finest roast, \n the powerful flavor.",
                    style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFA9A9A9),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: size.height * 0.030,
                  ),
                  SizedBox(
                    height: 62,
                    width: size.width * 0.80,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Nav_bar(),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor:
                            const Color(0xffC67C4E), // Background color
                        foregroundColor: Colors.white, // Text color
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Text(
                        'Get Started',
                        style: GoogleFonts.sora(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.030,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
