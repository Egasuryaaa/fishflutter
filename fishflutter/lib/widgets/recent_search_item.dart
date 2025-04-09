import 'package:flutter/material.dart';

class RecentSearchItem extends StatelessWidget {
  final String title;

  const RecentSearchItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.network(
                'https://cdn.builder.io/api/v1/image/assets/TEMP/6127045ae80fb88c3f49fbc8fe9eb059971c85c9?placeholderIfAbsent=true&apiKey=5d5a0a1efe2f40a8a62ab403726e005a',
                width: 24,
                height: 24,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: TextStyle(
                  color: Color(0xFF101010),
                  fontFamily: 'Inter',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/0e16f72a7cef460137f78ca8ed4eb36b72a12511?placeholderIfAbsent=true&apiKey=5d5a0a1efe2f40a8a62ab403726e005a',
            width: 20,
            height: 20,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}