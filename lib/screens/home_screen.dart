import 'package:flutter/material.dart';
import '../models/my_product.dart';
import '../widgets/product_card.dart';
import '../screens/details_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();


}
class _HomeScreenState extends State<HomeScreen> {
    int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("GG",style: TextStyle(fontFamily: "Space Mission", fontSize: 50),
      ),
      ),
      endDrawer: Drawer(child: ListView(
        children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column()),
             
      
      ],
      ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [const Text("Products",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
        ) ,),
        const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildProductCategory(index: 0, name: "All Products"),
                _buildProductCategory(index: 1, name: "Trending"),
                _buildProductCategory(index: 2, name: "New"),

              ],
            ),
            const SizedBox(height: 20),
            Expanded(child: isSelected == 0 
            ? _buildAllProducts() 
            : isSelected == 1
            ? _buildTrending()
            : _buildNew(),
            ),
          ],
      ),
      ),
    );
  }
 Widget _buildProductCategory({required int index, required String name}) {
   return GestureDetector(
    onTap: () => setState(() => isSelected = index),
    child: Container(
    width: 100,
    height: 40,
    margin: const EdgeInsets.only(top: 10, right: 10),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: isSelected == index ? Colors.blue : Colors.blue.shade300, 
      borderRadius: BorderRadius.circular(8)),
      child: Text(
        name,
        style: const TextStyle(color: Colors.white),
      ),
    ),
    );
  }
  _buildAllProducts() => GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: (100 / 140),
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
    ),
      scrollDirection: Axis.vertical,
      itemCount: MyProducts.allProducts.length,
      itemBuilder: (context, index) {
        final allProducts = MyProducts.allProducts[index];
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(product: allProducts),
              ),
          ),
          child: ProductCard(product: allProducts),
        );
      }
    );
    _buildTrending() => GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (100 / 140),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        scrollDirection: Axis.vertical,
        itemCount: MyProducts.trendingList.length,
        itemBuilder: (context, index) {
          final trendingList = MyProducts.trendingList[index];
          return ProductCard(product: trendingList);
        },
        );
         _buildNew() => GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (100 / 140),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        scrollDirection: Axis.vertical,
        itemCount: MyProducts.newList.length,
        itemBuilder: (context, index) {
          final newList = MyProducts.newList[index];
          return ProductCard(product: newList);
        },
      );
}