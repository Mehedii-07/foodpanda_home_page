import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantInfo extends StatelessWidget {
  const RestaurantInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18, top: 10),
          child: Text(
            "Divine",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 5),
          child: Text(
            "Chinese, Asian, Fast Food",
            style: GoogleFonts.poppins(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF232323),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 2),
          child: Text(
            "more",
            style: GoogleFonts.poppins(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF0274BC),
            ),
          ),
        ),
      ],
    );
  }
}
