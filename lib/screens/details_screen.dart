import 'package:flutter/material.dart';
import '../models/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text("Details", style: TextStyle(fontSize: 40, fontFamily: "Space Mission")),
      centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 36),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [ 
        Container(
          width: 220,
          height: 220,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue.shade100,
          ),
          child: Image.asset(product.image, fit: BoxFit.cover),
        ),
      ]
    ),
    const SizedBox(height: 36.0),
    Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      height: 400,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                product.name.toUpperCase(),
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '\$' '${product.price}',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Text(
            product.description,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontSize: 17,
            ),
          ),
        ],
      ),
    ),
        ],
      ),
    bottomSheet: BottomAppBar(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 10,
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '\$' '${product.price}',
            style: const TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.white),
            ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            label: const Text("Add to Cart"),
          ),
         ],
        ),
      ),
    ),
    ); 
  }
 }