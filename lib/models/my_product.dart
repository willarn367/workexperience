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
      "The Evo NXT ball is lighting up a new path in the paint with modified weight distribution. The Evo NXT is built for shooters who live beyond the arc; using revolutionary Extended Range Tech the weight of the ball is redistributed with an advanced internal construction, making the ball easier to shoot from long range. Updates including new bright optics, a micro-touch cover, and a patented cushion core. All features that deliver a grip and softness allowing all players to extend their range, elevating their game to what's NXT.",
      quantity: 0,
    ),
  
    Product(
      id: 1,
      name: 'Lakers Jersey',
      price: 120.00,
      image: 'assets/jerseys/lakers.png',
      category: "Trending",
      description:
      "Every team has its true colours, an unmistakable identity that sets it apart from the rest of the league. Honouring a rich hoops heritage, this Los Angeles Lakers jersey is inspired by what the pros wear on the hardwood, from squad details to lightweight, sweat-wicking mesh. It helps keep you dry and cool on or off the court while you rep your favourite player and the game you love.",
      quantity: 1,
    ),
     Product(
      id: 1,
      name: 'Iridescent Ball',
      price: 70.00,
      image: 'assets/balls/spaldingiridescent.png',
      category: "Trending",
      description:
      "Light up your game with the Spalding Glow Basketball. Designed with performance composite leather and a unique iridescent foil that glows in the dark, this ball turns heads on any court—indoors or outdoors.",
      quantity: 1,
    ),
    Product(
      id: 1,
      name: 'Pacers Jersey',
      price: 120.00,
      image: 'assets/jerseys/pacers.png',
      category: "New",
      description:
      "When you want that step closer to a genuine NBA jersey you can't go wrong with this. Constructed with superb care and quality materials this is an excellent facsimile of the players' own alternate kit.",
      quantity: 1,
    ),
     Product(
      id: 1,
      name: 'Blue/Black Ball',
      price: 55.00,
      image: 'assets/balls/blackbluespalding.png',
      category: "1 Left in Stock",
      description:
      "Made from composite leather. Spalding created the very first basketball in 1984, We are the original game ball. Featuring gold foil detailing, play in style with our new Spalding original game ball range.",
      quantity: 1,
    ),
  ];

  
static List<Product> trendingList = [
 
    Product(
      id: 1,
      name: 'Iridescent Ball',
      price: 70.00,
      image: 'assets/balls/spaldingiridescent.png',
      category: "Trending",
      description:
      "Light up your game with the Spalding Glow Basketball. Designed with performance composite leather and a unique iridescent foil that glows in the dark, this ball turns heads on any court—indoors or outdoors.",
      quantity: 1,
    ),
     Product(
      id: 1,
      name: 'Lakers Jersey',
      price: 120.00,
      image: 'assets/jerseys/lakers.png',
      category: "Trending",
      description:
      "Every team has its true colours, an unmistakable identity that sets it apart from the rest of the league. Honouring a rich hoops heritage, this Los Angeles Lakers jersey is inspired by what the pros wear on the hardwood, from squad details to lightweight, sweat-wicking mesh. It helps keep you dry and cool on or off the court while you rep your favourite player and the game you love.",
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
      "When you want that step closer to a genuine NBA jersey you can't go wrong with this. Constructed with superb care and quality materials this is an excellent facsimile of the players' own alternate kit.",
      quantity: 1,
    ),
  ];
}
