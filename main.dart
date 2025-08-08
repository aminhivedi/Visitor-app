import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'services/firebase_service.dart';
import 'pages/dashboard.dart';
import 'pages/map_page.dart';
import 'pages/orders_page.dart';
import 'pages/settings_page.dart';

// IMPORTANT: generate lib/firebase_options.dart with `flutterfire configure` and remove this placeholder.
import 'firebase_options.dart' as firebase_options;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseService.init(firebase_options.DefaultFirebaseOptions.currentPlatform);
  runApp(const VisitoApp());
}

class VisitoApp extends StatelessWidget {
  const VisitoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visito',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MainShell(),
    );
  }
}

class MainShell extends StatefulWidget {
  const MainShell({super.key});
  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int _currentIndex = 0;
  final pages = const [
    DashboardPage(),
    MapPage(),
    OrdersPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'داشبورد'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'نقشه'),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'سفارش‌ها'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'تنظیمات'),
        ],
        onTap: (i) => setState(() => _currentIndex = i),
      ),
    );
  }
}
