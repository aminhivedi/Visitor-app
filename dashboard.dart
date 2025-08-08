import 'package:flutter/material.dart';
import '../models/product.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('داشبورد')),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              _quickActions(context),
              const SizedBox(height: 12),
              const Expanded(child: _RecentStoresCard()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _quickActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _iconButton(Icons.inventory, 'محصولات', () {
          // TODO: navigate to products page
        }),
        _iconButton(Icons.shopping_cart, 'ثبت سفارش سریع', () {
          // TODO: open quick order flow
        }),
        _iconButton(Icons.store, 'فروشگاه‌ها', () {
          // TODO: open stores list
        }),
        _iconButton(Icons.chat, 'چت', () {
          // TODO: open chat list
        }),
      ],
    );
  }

  Widget _iconButton(IconData icon, String label, VoidCallback onTap) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Icon(icon, size: 28),
          ),
        ),
        const SizedBox(height: 6),
        Text(label)
      ],
    );
  }
}

class _RecentStoresCard extends StatelessWidget {
  const _RecentStoresCard();

  @override
  Widget build(BuildContext context) {
    // Placeholder - should be replaced by Firestore listener showing nearest / recent stores
    return Card(
      child: ListView(
        children: const [
          ListTile(title: Text('فروشگاه احمد'), subtitle: Text('امروز - بازدید نشده')),
          ListTile(title: Text('سوپرمارکت گلستان'), subtitle: Text('دیروز - تحویل شد')),
        ],
      ),
    );
  }
}
