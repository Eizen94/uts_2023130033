class Product {
  final String name;
  final double price;
  final String imageUrl;
  final String description;

  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
  });
}

//Product Data
List<Product> sampleProducts = [
  Product(
      name: 'Sony - Playstation 5',
      price: 8900000.00,
      imageUrl: 'assets/images/products/SonyPS5.jpg',
      description: ''),
  Product(
      name: 'Sony - Playstation 5 Pro',
      price: 14999000.00,
      imageUrl: 'assets/images/products/SonyPS5_Pro.jpg',
      description: ''),
  Product(
      name: 'Microsoft - Xbox Series S',
      price: 4490000.00,
      imageUrl: 'assets/images/products/Xbox Series S.jpg',
      description: ''),
  Product(
      name: 'Microsoft - Xbox Series X',
      price: 7125000.00,
      imageUrl: 'assets/images/products/Xbox Series X.jpg',
      description: ''),
  Product(
      name: 'Nintendo - Switch',
      price: 3400000.00,
      imageUrl: 'assets/images/products/Nintendo Switch.jpg',
      description: ''),
  Product(
      name: 'Nintendo - Switch - OLED',
      price: 3990000.00,
      imageUrl: 'assets/images/products/Nintendo Switch OLED.jpg',
      description: ''),
  Product(
      name: 'MSI - Claw Ultra 7 16/1TB',
      price: 8249000.00,
      imageUrl: 'assets/images/products/MSI - Claw Ultra 7 16GB - 1TB.jpg',
      description: ''),
  Product(
      name: 'Asus - ROG Ally X AMD Z1 Extreme 24G/1TB',
      price: 13999000.00,
      imageUrl:
          'assets/images/products/Asus - ROG Ally X AMD Z1 Extreme 24GB - 1TB.jpg',
      description: ''),
  Product(
      name: 'Xiaomi - Pad 6s Pro 12,4 inch 8/256GB',
      price: 7582000.00,
      imageUrl:
          'assets/images/products/Xiaomi Pad 6s Pro 12,4 inch 8GB - 256GB.jpg',
      description: ''),
  Product(
      name: 'Samsung - Galaxy Tab S9+ 12/512GB',
      price: 19999000.00,
      imageUrl:
          'assets/images/products/Samsung Galaxy Tab S9+ 12GB - 512GB.jpg',
      description: ''),
];
