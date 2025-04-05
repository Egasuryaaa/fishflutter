import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/image_slider.dart';
import '../widgets/category_section.dart';
import '../widgets/product_card.dart';
import '../widgets/bottom_nav_bar.dart';

class FishMarketScreen extends StatelessWidget {
  const FishMarketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ImageSlider(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14, 20, 14, 0),
                      child: Text(
                        'Kategori',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const CategorySection(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14, 20, 14, 0),
                      child: Text(
                        'Populer',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 20, 18, 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          ProductCard(
                            name: 'Mujair',
                            price: 'Rp 65.000/kg',
                          ),
                          ProductCard(
                            name: 'Udang',
                            price: 'Rp 28.000/kg',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
