import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: const Color(0xFFF3EDF7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home_outlined, size: 33, color: Colors.black),
          Icon(Icons.chat_bubble_outline, size: 33, color: Colors.black),
          Icon(Icons.account_circle_outlined, size: 33, color: Colors.black),
        ],
      ),
    );
  }
}