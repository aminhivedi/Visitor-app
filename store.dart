class Store {
  final String id;
  final String name;
  final String address;
  final double lat;
  final double lng;

  Store({required this.id, required this.name, required this.address, required this.lat, required this.lng});

  factory Store.fromMap(Map<String, dynamic> m, String id) {
    return Store(
      id: id,
      name: m['name'] ?? '',
      address: m['address'] ?? '',
      lat: (m['lat'] ?? 0).toDouble(),
      lng: (m['lng'] ?? 0).toDouble(),
    );
  }

  Map<String, dynamic> toMap() => {
    'name': name,
    'address': address,
    'lat': lat,
    'lng': lng,
  };
}
