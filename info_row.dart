import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoRow extends StatelessWidget {
  const InfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Time
          Row(
            children: [
              Text("Time",
                  style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400)),  SizedBox(height: 2),
              Text("40 mins",
                  style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400)),
            ],
          ),

          // Offers
          Column(
            children: [
              Row(
                children: [
                  Text("Offers",
                      style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400)),
                  const Icon(Icons.keyboard_arrow_down, size: 15)
                ],
              ),
              Text("View all (5)",
                  style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400)),
            ],
          ),

          // Reviews
          Column(
            children: [
              Text("Reviews",
                  style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400)),
              const SizedBox(height: 2),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                    color: const Color(0xFF3A8926),
                    borderRadius: BorderRadius.circular(4)),
                child: Row(
                  children: [
                    Text("4.1",
                        style: GoogleFonts.poppins(
                            fontSize: 8, fontWeight: FontWeight.w400, color: Colors.white)),
                    const SizedBox(width: 2),
                    const Icon(Icons.star, size: 8, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
