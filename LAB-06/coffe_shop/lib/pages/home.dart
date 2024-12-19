import 'package:coffe_shop/pages/detail.dart';
import 'package:coffe_shop/utilis/coffee_card.dart';
import 'package:coffe_shop/utilis/navbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedCategory = 0;
  List<String> list = ['Cappuccino', 'Machiato', 'Latte', 'Americano'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: Stack(
        children: [
          Container(
            height: 280,
            width: size.width,
            decoration: const BoxDecoration(color: Color(0xff131313)),
          ),
          Column(
            children: [
              Center(
                child: SizedBox(
                  width: 315,
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.060,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Location",
                                style: GoogleFonts.sora(
                                  color: const Color(0xffB7B7B7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Bilzen, Tanjungbalai",
                                    style: GoogleFonts.sora(
                                      color: const Color(0xffDDDDDD),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    color: Color(0xffDDDDDD),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.030,
                      ),
                      SizedBox(
                        height: 52,
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xff313131),
                            contentPadding: const EdgeInsets.only(
                              top: 23,
                              bottom: 2,
                              right: 5,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            hintText: "Search coffee",
                            hintStyle: GoogleFonts.sora(
                              color: const Color(0xff989898),
                            ),
                            prefixIcon: const Icon(
                              Iconsax.search_normal,
                              color: Colors.white,
                              size: 20,
                            ),
                            suffixIcon: Container(
                              width: 44,
                              height: 44,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: const Color(0xffC67C4E),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Icon(
                                Iconsax.setting_4,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.020,
                      ),
                      Container(
                        width: 315,
                        height: 140,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/banner.png"),
                            fit: BoxFit.contain,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 60,
                                height: 26,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: const Color(0xffED5151),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  "Promo",
                                  style: GoogleFonts.sora(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Stack(
                                children: [
                                  Positioned(
                                    top: 17,
                                    child: Container(
                                      width: 200,
                                      height: 27,
                                      decoration: const BoxDecoration(
                                        color: Color(0xff1C1C1C),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Buy one get",
                                    style: GoogleFonts.sora(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Positioned(
                                    top: 17,
                                    child: Container(
                                      width: 149,
                                      height: 23,
                                      decoration: const BoxDecoration(
                                        color: Color(0xff1C1C1C),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "one FREE",
                                    style: GoogleFonts.sora(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.020,
                      ),
                      SizedBox(
                        height: 40,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Chip(
                                backgroundColor: Color(0xffC67C4E),
                                label: Text(
                                  "All Coffee",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Chip(
                                backgroundColor: Colors.grey[200],
                                label: Text(
                                  "Machiato",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Chip(
                                backgroundColor: Colors.grey[200],
                                label: Text(
                                  "Latte",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Chip(
                                backgroundColor: Colors.grey[200],
                                label: Text(
                                  "Americano",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 430,
                width: 315,
                alignment: Alignment.center,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: size.width / 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 239,
                  ),
                  children: const [
                    ProductCard(
                      imageUrl: "assets/1.png",
                      title: "Coffee Mocha",
                      subtitle: "Deep Foam",
                      price: "\$4.53",
                      rating: 4.8,
                    ),
                    ProductCard(
                      imageUrl: "assets/2.png",
                      title: "Flat White",
                      subtitle: "Espresso",
                      price: "\$3.53",
                      rating: 4.8,
                    ),
                    ProductCard(
                      imageUrl: "assets/3.png",
                      title: "Mocha Fusi",
                      subtitle: "Ice/Hot",
                      price: "\$7.53",
                      rating: 4.8,
                    ),
                    ProductCard(
                      imageUrl: "assets/4.png",
                      title: "Coffee Panna",
                      subtitle: "Ice/Hot",
                      price: "\$5.53",
                      rating: 4.8,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
