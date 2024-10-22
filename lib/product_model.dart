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
    description: '''Spesifikasi:
      -Processor : 
AMD Ryzen™ Z1 Extreme Processor ("Zen4" architecture with 4nm process, 8-core /16-threads, 24MB total cache, up to 5.10 Ghz boost)

      -GPU: 
AMD Radeon™ Graphics (AMD RDNA™ 3, 12 CUs, up to 2.7 GHz, up to 8.6 Teraflops)

      -TDP: 9-30W

      -Display : 
7-inch FHD (1920 x 1080) 16:9 IPS-level glossy display
sRGB: 100%
Adobe: 75.35%
Gorilla® Glass Victus™
Touch Screen (10-point multi-touch)
Refresh Rate: 120Hz
Response Time: 7ms
Brightness: 500nits
FreeSync Premium

      -Memory : 
12GB*2 LPDDR5 on board
Support dual channel memory

      -Storage : 
1TB PCIe® 4.0 NVMe™ M.2 SSD (2280)

      -I/O Ports :
1x 3.5mm Combo Audio Jack
1x USB 3.2 Gen 2 Type-C support DisplayPort™ / power delivery
1x Type C support USB 4 (Thunderbolt™ 4 compliance, DisplayPort™ 1.4 with Freesync support, Power Delivery 3.0)
1x UHS-II microSD card reader (supports SD, SDXC and SDHC)

      -Control and Input :
A B X Y buttons
D-pad
L & R Hall Effect analog triggers
L & R bumpers
View button
Menu button
Command Center button
Armoury Crate button
2 x assignable grip buttons
      -Thumbsticks: 
2 x full-size analog sticks

      -Haptics: HD haptics

      -Gyro: 6-Axis IMU

      -Audio :
AI noise-canceling technology
Hi-Res certification (for headphone)
Smart Amp Technology
Dolby Atmos
Built-in array microphone
2-speaker system with Smart Amplifier Technology

      -Network and Communication : 
Wi-Fi 6E(802.11ax) (Triple band) 2*2 + Bluetooth® 5.2 (*Bluetooth® version may change with OS version different.)

      -Battery : 
80WHrs, 4S1P, 4-cell Li-ion

      -Power Supply : 
TYPE-C, 65W AC Adapter, Output: 20V DC, 3.25A, 65W, Input: 100~240V AC 50/60Hz universal

      -AURA SYNC : Yes

      -Weight : 678 g

      -Dimensions (W x D x H) : 
28.0 x 11.1 x 2.47 ~ 3.69 cm (11.02" x 4.37" x 0.97" ~ 1.45")

      -Xbox Game Pass : 
Xbox Game Pass for PC_3 months (*Terms and exclusions apply. Offer only available in eligible markets for Xbox Game Pass for PC. Eligible markets are determined at activation. Game catalog varies by region, device, and time.)

      -Security : 
Built-in Fingerprint Sensor
Microsoft Pluton security processor''',
  ),
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
