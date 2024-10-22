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
];
