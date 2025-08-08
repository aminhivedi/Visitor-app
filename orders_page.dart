import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Placeholder list - replace with Firestore query of user's orders
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('سفارش‌های من')),
        body: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.receipt_long),
              title: Text('سفارش #1001'),
              subtitle: Text('2025-08-07 10:24 - تایید شده'),
              trailing: Icon(Icons.keyboard_arrow_left),
            ),
            ListTile(
              leading: Icon(Icons.receipt_long),
              title: Text('سفارش #1002'),
              subtitle: Text('2025-08-06 15:02 - در حال ارسال'),
              trailing: Icon(Icons.keyboard_arrow_left),
            ),
          ],
        ),
      ),
    );
  }
}
