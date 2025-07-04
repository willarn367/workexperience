import 'package:flutter/material.dart';
import '../providers/cart_provider.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();


}
class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    final finalList = provider.cart;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20),
            child: Row(
              children: const [
                Text(
                  "My Cart",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold) 
      ),
      ],
      ),
      ),
        Expanded(
          child: ListView.builder(
            itemCount: finalList.length,
            itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  finalList[index].name,
                  style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                finalList[index].description,
                overflow: TextOverflow.ellipsis,
            ),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(finalList[index].image),
              backgroundColor: Colors.blue.shade100,
            ),
            trailing: Text(
              '\$${finalList[index].price}',
              style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold),
            ),
            tileColor: Colors.white,
           ),
          );
         },
        ),
       ),
      ],
     ),
    );

  }
}