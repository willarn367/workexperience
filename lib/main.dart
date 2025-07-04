import 'package:flutter/material.dart';
import 'package:workexperience/screens/cart_screen.dart';
import 'package:workexperience/screens/home_screen.dart';
import 'package:workexperience/screens/settings_screen.dart';
import 'package:provider/provider.dart';
import 'package:workexperience/providers/cart_provider.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => CartProvider()),
    ],
  
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'APP',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    ),
    );
  }

    
class HomePage extends StatefulWidget {
  const HomePage({super.key });

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int currentIndex = 0;
    List screens = [
      const HomeScreen(),
      const CartScreen(),
      const SettingsScreen(),
    ];
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
    
  
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() => currentIndex = value);
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
           BottomNavigationBarItem(
            label: "Cart",
            icon: Icon(Icons.shopping_cart),
          ),
           BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(Icons.settings),
          ),
        ]
      ),
    
    );
  }
}

