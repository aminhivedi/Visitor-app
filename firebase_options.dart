// Placeholder firebase_options.dart
// Run `flutterfire configure` to generate proper firebase_options.dart for your project.
// For now this file defines a minimal DefaultFirebaseOptions to allow compiling the scaffold.

import 'package:firebase_core/firebase_core.dart';
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform => FirebaseOptions(
    apiKey: 'REPLACE_ME',
    appId: 'REPLACE_ME',
    messagingSenderId: 'REPLACE_ME',
    projectId: 'REPLACE_ME',
  );
}
