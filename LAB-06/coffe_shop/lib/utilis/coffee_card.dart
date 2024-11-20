import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String price;
  final double rating;

  const ProductCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image with rating
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    imageUrl,
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    width: 51,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(0.5),
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 16,
                          color: Color(0xfffFBBE21),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          rating.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Product Title
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            // Subtitle
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            // Price and Add Button Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffC67C4E),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(12),
                  ),
                  onPressed: () {},
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
