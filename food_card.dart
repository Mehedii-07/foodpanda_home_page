import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  final String rating;
  final String time;

  const FoodCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.rating,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                Image.asset(imagePath,
                    width: double.infinity, height: 150, fit: BoxFit.cover),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    color: Colors.black.withOpacity(0.6),
                    child: Text(time,
                        style: GoogleFonts.poppins(
                            fontSize: 10, color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // Title + Price + Rating
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400)),
                  const SizedBox(height: 3),
                  Text(price,
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54)),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                    color: const Color(0xFF3A8926),
                    borderRadius: BorderRadius.circular(4)),
                child: Row(
                  children: [
                    Text(rating,
                        style: GoogleFonts.poppins(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                    const Icon(Icons.star, size: 8, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          // Bestseller + ADD Button
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFFF9E9E)),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFFFE3E3),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                child: Text("Bestseller",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFFFF5454))),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFE4442A)),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Row(
                  children: [
                    Text("ADD",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFE4442A))),
                    const SizedBox(width: 5),
                    const Icon(Icons.add_circle,
                        size: 16, color: Color(0xFFE4442A)),
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
