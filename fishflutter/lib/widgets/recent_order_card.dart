import 'package:flutter/material.dart';

class RecentOrderCard extends StatelessWidget {
  final String title;
  final String vendor;
  final double rating;

  const RecentOrderCard({
    Key? key,
    required this.title,
    required this.vendor,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70,
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 9),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Color(0xFF101010),
                  fontFamily: 'Inter',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                vendor,
                style: TextStyle(
                  color: Color(0xFF878787),
                  fontFamily: 'Inter',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Image.network(
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/f6750901352443474827223f628365525fd894e9?placeholderIfAbsent=true&apiKey=5d5a0a1efe2f40a8a62ab403726e005a',
                    width: 16,
                    height: 16,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    rating.toString(),
                    style: TextStyle(
                      color: Color(0xFF101010),
                      fontFamily: 'Inter',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}