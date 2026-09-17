import 'package:flutter/material.dart';
import '../../../../core/widgets/price_tag.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            PriceTag(price: 15000, stock: 10),
            PriceTag(price: 5000, stock: 0),
            PriceTag(price: 18000, stock: 5),
          ],
        ),
      ),
    );
  }
}