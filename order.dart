class OrderItem {
  final String productId;
  final String name;
  final int qty;
  final double price;

  OrderItem({required this.productId, required this.name, required this.qty, required this.price});

  Map<String, dynamic> toMap() => {
    'productId': productId,
    'name': name,
    'qty': qty,
    'price': price,
  };
}

class Order {
  final String id;
  final String storeId;
  final String visitorId;
  final List<OrderItem> items;
  final double total;
  final DateTime createdAt;
  final String status;

  Order({required this.id, required this.storeId, required this.visitorId, required this.items, required this.total, required this.createdAt, this.status = 'created'});

  Map<String, dynamic> toMap() => {
    'storeId': storeId,
    'visitorId': visitorId,
    'items': items.map((i) => i.toMap()).toList(),
    'total': total,
    'createdAt': createdAt.toIso8601String(),
    'status': status,
  };
}
