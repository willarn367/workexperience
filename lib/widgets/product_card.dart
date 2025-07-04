import 'package:flutter/material.dart';
import'../models/product.dart';

class ProductCard extends StatefulWidget {

  final Product product;

  const ProductCard({super.key,required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
@override
Widget build(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width / 2,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      color: const Color.fromARGB(27, 168, 168, 168),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
        Icon(
          Icons.shopping_cart_checkout_outlined,
          color: Colors.blue,
          ),
        ],
       ),
       SizedBox(
        height: 130,
        width: 130,
        child: Image.asset(
          widget.product.image,
          fit: BoxFit.cover,
          ),
       ),
       Text(
          widget.product.name,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          )
       ),
       Text(
        widget.product.category,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
       ),
       Text('\$' '${widget.product.price}',
       style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
       ),
       ),
     ],
   ),
  );
 }
}