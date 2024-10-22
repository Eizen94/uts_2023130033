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
    description: '''Spesifikasi:
        Intel® Core™ Ultra 7 Processor with Intel® AI Boost (NPU)
        Windows 11 Home
        7" FHD (1920x1080), 120Hz, IPS-Level, Touchscreen Intel® Arc™ Graphics
        16GB LPDDR5-6400
        1TB SSD
        Intel® Killer™ BE Wi-Fi 7 + Bluetooth 5.4
        
        AUDIO JACK
        1x Mic-in/Headphone-out Combo Jack
        
        I/O PORTS
        1x Type-C (USB / DP / Thunderbolt™ 4) with PD charging
        1x Micro SD Card Reader
        
        CONTROL
        RGB ABXY buttons
        RGB L & R Hall Effect analog sticks
        D-pad
        L & R Hall Effect analog triggers
        L & R bumpers
        View button
        Menu button
        MSI Center M button
        Quick Settings Key
        2x Assignable grip buttons
        HD haptics
        
        Fingerprint Security
        6-Cell 53 Battery (Whr)
        AC ADAPTER 65W PD adapter
        
        DIMENSION (WXDXH) : 294 x 117 x 21.2mm
        WEIGHT (W/ BATTERY) : 675 g
        
        COLOR : Black''',
  ),
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
