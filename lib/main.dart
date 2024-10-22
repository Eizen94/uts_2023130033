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
      notifier: CartNotifier(),
      child: MaterialApp(
        title: 'Flutter Login Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}

class CartProvider extends InheritedNotifier<CartNotifier> {
  const CartProvider({
    super.key,
    required super.notifier,
    required super.child,
  });

  static CartNotifier of(BuildContext context) {
    final CartProvider? result =
        context.dependOnInheritedWidgetOfExactType<CartProvider>();
    assert(result != null, 'No CartProvider found in context');
    return result!.notifier!;
  }
}

class CartNotifier extends ChangeNotifier {
  final Cart _cart = Cart();

  Cart get cart => _cart;

  void addItem(String productId, String name, double price, String imageUrl,
      {int quantity = 1}) {
    _cart.addItem(productId, name, price, imageUrl, quantity: quantity);
    notifyListeners();
  }

  void removeItem(String productId) {
    _cart.removeItem(productId);
    notifyListeners();
  }

  void updateQuantity(String productId, int quantity) {
    _cart.updateQuantity(productId, quantity);
    notifyListeners();
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
}
