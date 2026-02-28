import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/cart_provider.dart';

class CheckoutPage extends ConsumerStatefulWidget {
  const CheckoutPage({super.key});

  @override
  ConsumerState<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends ConsumerState<CheckoutPage> {
  String _selectedPayment = 'COD';

  void _placeOrder() {
    // Mock placing order
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Order Placed!'),
        content: const Text(
          'Your order has been successfully placed. You can track its status in the profile section.',
        ),
        actions: [
          TextButton(
            onPressed: () {
              ref.read(cartProvider.notifier).clear();
              Navigator.pop(context); // Close dialog
              context.go('/'); // Go to home
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cartItems = ref.watch(cartProvider);
    final totalAmount = ref.read(cartProvider.notifier).totalAmount;

    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shipping Address',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Icon(Icons.location_on),
                title: Text('John Doe'),
                subtitle: Text('123 Le Loi St, District 1, Ho Chi Minh City'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Order Summary',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return ListTile(
                  title: Text(item.product.name),
                  trailing: Text(
                    'x${item.quantity}  ${item.totalPrice.toStringAsFixed(0)} VND',
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Text(
                'Total',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              trailing: Text(
                '${totalAmount.toStringAsFixed(0)} VND',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Payment Method',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            RadioListTile(
              title: const Text('Momo'),
              value: 'Momo',
              groupValue: _selectedPayment,
              onChanged: (value) =>
                  setState(() => _selectedPayment = value as String),
              secondary: const Icon(
                Icons.account_balance_wallet,
                color: Colors.pink,
              ),
            ),
            RadioListTile(
              title: const Text('VNPay'),
              value: 'VNPay',
              groupValue: _selectedPayment,
              onChanged: (value) =>
                  setState(() => _selectedPayment = value as String),
              secondary: const Icon(Icons.payment, color: Colors.blue),
            ),
            RadioListTile(
              title: const Text('Cash on Delivery (COD)'),
              value: 'COD',
              groupValue: _selectedPayment,
              onChanged: (value) =>
                  setState(() => _selectedPayment = value as String),
              secondary: const Icon(Icons.money, color: Colors.green),
            ),
            const SizedBox(height: 48),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: _placeOrder,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                ),
                child: Text(
                  'Place Order - ${totalAmount.toStringAsFixed(0)} VND',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
