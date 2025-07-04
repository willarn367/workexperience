import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();


}
class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Products",
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
      );
  }
}