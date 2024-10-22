import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'cart_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CartProvider(
      child: MaterialApp(
        title: 'Flutter Login Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}

// Cart Provider
class CartProvider extends StatefulWidget {
  final Widget child;

  const CartProvider({
    super.key,
    required this.child,
  });

  static CartProviderState of(BuildContext context) {
    final CartProviderState? result =
        context.findAncestorStateOfType<CartProviderState>();
    if (result != null) {
      return result;
    }
    throw FlutterError.fromParts(<DiagnosticsNode>[
      ErrorSummary(
          'CartProvider.of() called with a context that does not contain a CartProvider.'),
      ErrorDescription(
          'No CartProvider ancestor could be found starting from the context that was passed.'),
    ]);
  }

  @override
  State<CartProvider> createState() => CartProviderState();
}

class CartProviderState extends State<CartProvider> {
  final Cart _cart = Cart();

  Cart get cart => _cart;

  void addItem(String productId, String name, double price, String imageUrl,
      {int quantity = 1}) {
    setState(() {
      _cart.addItem(productId, name, price, imageUrl, quantity: quantity);
    });
  }

  void removeItem(String productId) {
    setState(() {
      _cart.removeItem(productId);
    });
  }

  void updateQuantity(String productId, int quantity) {
    setState(() {
      _cart.updateQuantity(productId, quantity);
    });
  }

  void clearCart() {
    setState(() {
      _cart.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
