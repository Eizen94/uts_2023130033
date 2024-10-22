class Product {
  final String name;
  final double price;
  final String imageUrl;

  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
  });
}

//Product Data
List<Product> sampleProducts = [
  Product(
    name: 'Sony Playstation 5',
    price: 8900000.00,
    imageUrl: 'assets/images/products/SonyPS5.jpg',
  ),
  Product(
    name: 'Sony Playstation 5 Pro',
    price: 14999000.00,
    imageUrl: 'assets/images/products/SonyPS5_Pro.jpg',
  ),
  Product(
    name: 'Xbox Series X',
    price: 7125000.00,
    imageUrl: 'assets/images/products/Xbox Series X.png',
  ),
  Product(
    name: 'Xbox Series S',
    price: 4490000.00,
    imageUrl: 'assets/images/products/Xbox Series S.jpg',
  ),
];
