import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.chevron_left, size: 35, color: Colors.black),
          Row(
            children: const [
              Icon(Icons.shopping_cart_outlined, size: 24, color: Colors.black),
              SizedBox(width: 15),
              Icon(Icons.favorite_border, size: 22, color: Colors.black),
              SizedBox(width: 15),
              Icon(Icons.share_outlined, size: 22, color: Colors.black),
            ],
          )
        ],
      ),
    );
  }
}
