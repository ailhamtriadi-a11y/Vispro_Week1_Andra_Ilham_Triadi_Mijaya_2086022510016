import 'package:flutter/material.dart';

class PriceTag extends StatelessWidget {
  const PriceTag({super.key, required this.price, required this.stock});

  final int price;
  final int stock;

  bool get isSoldOut => stock == 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Rp $price',
          style: TextStyle(color: isSoldOut ? Colors.grey : Colors.black),
        ),
        if (isSoldOut) const Chip(label: Text('Habis')),
      ],
    );
  }
}