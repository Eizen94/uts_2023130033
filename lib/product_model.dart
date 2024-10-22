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
    imageUrl: 'assets/images/products/Xbox Series X.jpg',
  ),
  Product(
    name: 'Xbox Series S',
    price: 4490000.00,
    imageUrl: 'assets/images/products/Xbox Series S.jpg',
  ),
  Product(
    name: 'Nintendo Switch',
    price: 3400000.00,
    imageUrl: 'assets/images/products/Nintendo Switch.jpg',
  ),
  Product(
    name: 'Nintendo Switch OLED',
    price: 3990000.00,
    imageUrl: 'assets/images/products/Nintendo Switch OLED.jpg',
  ),
  Product(
    name: 'Xiaomi Pad 6s Pro 12,4 inch 8/256GB',
    price: 7582000.00,
    imageUrl:
        'assets/images/products/Xiaomi Pad 6s Pro 12,4 inch 8GB - 256GB.jpg',
  ),
  Product(
    name: 'Samsung Galaxy Tab S9+ 12/512GB',
    price: 19999000.00,
    imageUrl: 'assets/images/products/Samsung Galaxy Tab S9+ 12GB - 512GB.jpg',
  ),
];
