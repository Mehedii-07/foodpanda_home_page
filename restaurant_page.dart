import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/top_bar.dart';
import '../widgets/restaurant_info.dart';
import '../widgets/info_row.dart';
import '../widgets/food_card.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBar(),
              const RestaurantInfo(),
              const InfoRow(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Text(
                  "Recommended",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // ===== Food Cards =====
              FoodCard(
                imagePath: "assets/chicken_noodles.jpg", // picture1
                title: "Chicken Noodles",
                price: "\$35",
                rating: "4.0",
                time: "40 mins",
              ),
              const SizedBox(height: 20),
              FoodCard(
                imagePath: "assets/fried_chicken.jpg", // picture2
                title: "Fried Chicken",
                price: "\$40",
                rating: "4.5",
                time: "40 mins",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
