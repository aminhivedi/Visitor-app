import 'package:firebase_core/firebase_core.dart';

class FirebaseService {
  static Future<void> init(FirebaseOptions options) async {
    await Firebase.initializeApp(options: options);
    // Additional Firebase setup (Messaging, Crashlytics ...) can go here.
  }
}
