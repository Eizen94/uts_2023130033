import 'package:flutter/material.dart';
import 'product_model.dart';
import 'products_screen.dart';
import 'cart_screen.dart';
import 'main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();
  List<Product> _filteredProducts = [];

  @override
  void initState() {
    super.initState();
    _filteredProducts = sampleProducts;
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    String searchTerm = _searchController.text.toLowerCase();
    setState(() {
      _filteredProducts = sampleProducts.where((product) {
        return product.name.toLowerCase().contains(searchTerm);
      }).toList();
    });
  }

  String formatPrice(double price) {
    var wholePart = price.toInt().toString();
    var formattedWholePart = '';

    var counter = 0;
    for (var i = wholePart.length - 1; i >= 0; i--) {
      counter++;
      formattedWholePart = wholePart[i] + formattedWholePart;
      if (counter % 3 == 0 && i > 0) {
        formattedWholePart = '.$formattedWholePart';
      }
    }

    return 'Rp $formattedWholePart,00';
  }

  @override
  Widget build(BuildContext context) {
    final cartNotifier = CartProvider.of(context);
    final cart = cartNotifier.cart;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFE0C3FC), Color(0xFF8EC5FC)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // App Bar
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.menu, color: Colors.white),
                      onPressed: () {},
                    ),
                    if (_isSearching)
                      Expanded(
                        child: TextField(
                          controller: _searchController,
                          autofocus: true,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Search products...',
                            hintStyle:
                                TextStyle(color: Colors.white.withOpacity(0.7)),
                            border: InputBorder.none,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 16),
                          ),
                        ),
                      )
                    else
                      const Spacer(),
                    IconButton(
                      icon: Icon(
                        _isSearching ? Icons.close : Icons.search,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          if (_isSearching) {
                            _isSearching = false;
                            _searchController.clear();
                            _filteredProducts = sampleProducts;
                          } else {
                            _isSearching = true;
                          }
                        });
                      },
                    ),
                  ],
                ),
              ),
              // Title (hanya muncul kalau lagi tidak searching)
              if (!_isSearching)
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Our products',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              // Hasil Search
              if (_isSearching && _searchController.text.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Found ${_filteredProducts.length} results',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              // Tampilan Produk
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: _filteredProducts.isEmpty
                      ? Center(
                          child: Text(
                            'No products found',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 16,
                            ),
                          ),
                        )
                      : GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            childAspectRatio: 0.75,
                          ),
                          itemCount: _filteredProducts.length,
                          itemBuilder: (context, index) {
                            final product = _filteredProducts[index];
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ProductScreen(product: product),
                                  ),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    // gambar produk
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.2),
                                          borderRadius:
                                              const BorderRadius.vertical(
                                            top: Radius.circular(12),
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              const BorderRadius.vertical(
                                            top: Radius.circular(12),
                                          ),
                                          child: Stack(
                                            fit: StackFit.expand,
                                            children: [
                                              Image.asset(
                                                product.imageUrl,
                                                fit: BoxFit.cover,
                                                errorBuilder: (context, error,
                                                    stackTrace) {
                                                  return const Center(
                                                    child: Icon(
                                                      Icons.image,
                                                      size: 48,
                                                      color: Colors.white,
                                                    ),
                                                  );
                                                },
                                              ),
                                              if (cart
                                                  .containsItem(product.name))
                                                Positioned(
                                                  top: 8,
                                                  right: 8,
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.all(4),
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xFF7C4DFF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    child: Text(
                                                      'In Cart: ${cart.getItem(product.name)?.quantity ?? 0}',
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    // Nama produk
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 4),
                                      child: Text(
                                        product.name,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    // harga produk
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 0, 8, 8),
                                      child: Text(
                                        formatPrice(product.price),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CartScreen(),
            ),
          );
        },
        backgroundColor: const Color(0xFF7C4DFF),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const Icon(Icons.shopping_cart, color: Colors.white),
            if (cart.itemCount > 0)
              Positioned(
                right: -8,
                top: -8,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 18,
                    minHeight: 18,
                  ),
                  child: Text(
                    '${cart.itemCount}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
