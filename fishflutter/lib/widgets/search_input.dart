import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFFEDEDED)),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Image.network(
              'https://cdn.builder.io/api/v1/image/assets/TEMP/e9f20d7684fc299427abcfcc68333514d8c94204?placeholderIfAbsent=true&apiKey=5d5a0a1efe2f40a8a62ab403726e005a',
              width: 20,
              height: 20,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                'Search',
                style: TextStyle(
                  color: Color(0xFF878787),
                  fontFamily: 'Inter',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}