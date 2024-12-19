import 'package:coffe_shop/pages/order.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Detail extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String price;
  final double rating;

  const Detail({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.rating,
  });

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int selectedSize = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.050,
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.chevron_left,
                      color: Color(0xff2F2D2C),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.095,
                  ),
                  Text(
                    'Detail',
                    style: GoogleFonts.sora(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.095,
                  ),
                  IconButton(
                    onPressed: () {
                      const Icon(
                        Iconsax.heart,
                        color: Color.fromARGB(255, 223, 6, 6),
                      );
                    },
                    icon: const Icon(
                      Iconsax.heart,
                      color: Color(0xff2F2D2C),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.030,
            ),
            // Dynamic Image
            Container(
              width: 315,
              height: 226,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: NetworkImage(widget.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.020,
            ),
            SizedBox(
              width: 315,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Dynamic Title
                  Text(
                    widget.title,
                    style: GoogleFonts.sora(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2F2D2C)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  // Dynamic Subtitle
                  Text(
                    widget.subtitle,
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff9B9B9B),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 340,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Iconsax.star1,
                          color: Color(0xffFBBE21),
                        ),
                      ),
                      // Dynamic Rating
                      Text(
                        widget.rating.toString(),
                        style: GoogleFonts.sora(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff2F2D2C),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.010,
                      ),
                      Text(
                        "(230)",
                        style: GoogleFonts.sora(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: const Color(0xffF9F9F9),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Icon(
                          Icons.beach_access_rounded,
                          color: Color(0xffC67C4E),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.020,
                      ),
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: const Color(0xffF9F9F9),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Icon(
                          Icons.bolt_outlined,
                          color: Color(0xffC67C4E),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: 315,
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.010,
                  ),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(color: Color(0xffEAEAEA)),
                  ),
                  SizedBox(
                    height: size.height * 0.020,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: GoogleFonts.sora(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.010,
                      ),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text:
                              "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. ",
                          style: GoogleFonts.sora(
                              color: const Color(0xff9B9B9B),
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              height: 1.64),
                          children: [
                            TextSpan(
                              text: "Read More",
                              style: GoogleFonts.sora(
                                color: const Color(0xffC67C4E),
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.020,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Size",
                        style: GoogleFonts.sora(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.020,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildSizeOption("S", 0),
                          _buildSizeOption("M", 1),
                          _buildSizeOption("L", 2),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.020,
                  ),
                ],
              ),
            ),
            Container(
              height: 121,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Price",
                            style: GoogleFonts.sora(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff9B9B9B)),
                          ),
                          // Dynamic Price
                          Text(
                            widget.price,
                            style: GoogleFonts.sora(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xffC67C4E)),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 217,
                        height: 62,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Order(
                                        imageUrl: widget.imageUrl,
                                        title: widget.title,
                                        subtitle: widget.subtitle,
                                        price: widget.price,
                                      )),
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
                            'Buy Now',
                            style: GoogleFonts.sora(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSizeOption(String size, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize = index;
        });
      },
      child: Container(
        width: 96,
        height: 43,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: selectedSize == index ? const Color(0xffFFF5EE) : Colors.white,
          border: Border.all(
            color: selectedSize == index
                ? const Color(0xffC67C4E)
                : const Color(0xffDEDEDE),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          size,
          style: GoogleFonts.sora(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color:
                selectedSize == index ? const Color(0xffC67C4E) : Colors.black,
          ),
        ),
      ),
    );
  }
}
