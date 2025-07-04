import 'product.dart';

class MyProducts {
  static List<Product> allProducts = [

    Product(
      id: 1,
      name: 'Basketball',
      price: 35.00,
      image: 'assets/balls/basketball.png',
      category: "Sold Out",
      description:
      "Ball for Basketball",
      quantity: 1,
    ),
  
    Product(
      id: 1,
      name: 'Lakers Jersey',
      price: 120.00,
      image: 'assets/jerseys/lakers.png',
      category: "Trending",
      description:
      "Jersey for the NBA team Los Angeles Lakers",
      quantity: 1,
    ),
     Product(
      id: 1,
      name: 'Iridescent Basketball',
      price: 70.00,
      image: 'assets/balls/spaldingiridescent.png',
      category: "Trending",
      description:
      "Iridescent TF Glow in the Dark Basketball",
      quantity: 1,
    ),
    Product(
      id: 1,
      name: 'Pacers Jersey',
      price: 120.00,
      image: 'assets/jerseys/pacers.png',
      category: "New",
      description:
      "Jersey for the NBA team Indiana Pacers",
      quantity: 1,
    ),
     Product(
      id: 1,
      name: 'Blue/Black Ball',
      price: 55.00,
      image: 'assets/balls/blackbluespalding.png',
      category: "1 Left in Stock",
      description:
      "Black and Blue Spalding Basketball",
      quantity: 1,
    ),
  ];

  
static List<Product> trendingList = [
 
    Product(
      id: 1,
      name: 'Iridescent Basketball',
      price: 70.00,
      image: 'assets/balls/spaldingiridescent.png',
      category: "Trending",
      description:
      "Iridescent TF Glow in the Dark Basketball",
      quantity: 1,
    ),
     Product(
      id: 1,
      name: 'Lakers Jersey',
      price: 120.00,
      image: 'assets/jerseys/lakers.png',
      category: "Trending",
      description:
      "Jersey for the NBA team Los Angeles Lakers",
      quantity: 1,
    ),
   
  ];
static List<Product> newList = [
    Product(
      id: 1,
      name: 'Pacers Jersey',
      price: 120.00,
      image: 'assets/jerseys/pacers.png',
      category: "New",
      description:
      "Jersey for the NBA team Indiana Pacers",
      quantity: 1,
    ),
  ];
}
