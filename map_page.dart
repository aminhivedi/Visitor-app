import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});
  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  static const _initialCam = CameraPosition(target: LatLng(35.6892, 51.3890), zoom: 12);
  GoogleMapController? _controller;

  // TODO: replace with Firestore-loaded stores
  final List<Marker> _markers = [
    Marker(markerId: const MarkerId('s1'), position: const LatLng(35.6895, 51.3890), infoWindow: InfoWindow(title: 'فروشگاه نمونه 1')),
    Marker(markerId: const MarkerId('s2'), position: const LatLng(35.6865, 51.3895), infoWindow: InfoWindow(title: 'سوپرمارکت گلستان')),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('نقشه')),
        body: GoogleMap(
          initialCameraPosition: _initialCam,
          markers: Set<Marker>.of(_markers),
          onMapCreated: (c) => _controller = c,
          myLocationEnabled: true,
        ),
      ),
    );
  }
}
