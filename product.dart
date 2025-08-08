class Product {
  final String id;
  final String name;
  final double price;
  final String sku;
  final bool available;

  Product({required this.id, required this.name, required this.price, this.sku = '', this.available = true});

  factory Product.fromMap(Map<String, dynamic> m, String id) {
    return Product(
      id: id,
      name: m['name'] ?? '',
      price: (m['price'] ?? 0).toDouble(),
      sku: m['sku'] ?? '',
      available: m['available'] ?? true,
    );
  }

  Map<String, dynamic> toMap() => {
    'name': name,
    'price': price,
    'sku': sku,
    'available': available,
  };
}
