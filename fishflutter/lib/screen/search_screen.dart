import 'package:flutter/material.dart';
import '../widgets/search_input.dart';
import '../widgets/recent_search_item.dart';
import '../widgets/recent_order_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      constraints: const BoxConstraints(maxWidth: 480),
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 31, 24, 301),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header section
          Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color(0xFFEDEDED)),
                  color: Colors.white,
                ),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  icon: Image.network(
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/21390e90abad8296ccfcb6c1b43a5d31b436c10c?placeholderIfAbsent=true&apiKey=5d5a0a1efe2f40a8a62ab403726e005a',
                    width: 20,
                    height: 20,
                    fit: BoxFit.contain,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              const SizedBox(width: 20),
              Text(
                'Search',
                style: TextStyle(
                  color: Color(0xFF101010),
                  fontFamily: 'Inter',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),

          const SizedBox(height: 19),
          const SearchInput(),

          const SizedBox(height: 20),
          // Recent searches header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pencarian terkini',
                style: TextStyle(
                  color: Color(0xFF101010),
                  fontFamily: 'Inter',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Delete',
                  style: TextStyle(
                    color: Color(0xFF88D8E9),
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 11),
          // Recent searches list
          Column(
            children: [
              RecentSearchItem(title: 'Mujair'),
              RecentSearchItem(title: 'Bandeng'),
              RecentSearchItem(title: 'Udang'),
              RecentSearchItem(title: 'Tongkol'),
              RecentSearchItem(title: 'Kakap'),
            ],
          ),

          const SizedBox(height: 33),
          Text(
            'Pesanan terbaru saya',
            style: TextStyle(
              color: Color(0xFF101010),
              fontFamily: 'Inter',
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 16),
          // Recent orders
          RecentOrderCard(
            title: 'Mujair',
            vendor: 'Lapak Pak Roni',
            rating: 4.9,
          ),

          Container(
            height: 2,
            color: Color(0xFFEDEDED),
            margin: EdgeInsets.symmetric(vertical: 13),
          ),

          RecentOrderCard(
            title: 'Tongkol',
            vendor: 'Lapak Pak Hadi',
            rating: 4.9,
          ),
        ],
      ),
    );
  }
}