// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB1aigrx-mjbpdV-R2CZYJejjIH-2eJCCs',
    appId: '1:956793271357:web:dd8ac7bd3c8523b5dc2654',
    messagingSenderId: '956793271357',
    projectId: 'budget-app-90442',
    authDomain: 'budget-app-90442.firebaseapp.com',
    storageBucket: 'budget-app-90442.appspot.com',
    measurementId: 'G-5Q96633428',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAKg6rBcWF1jR-1W0FY2IkRbdcEiOFnTC4',
    appId: '1:956793271357:android:a7225818da9ff287dc2654',
    messagingSenderId: '956793271357',
    projectId: 'budget-app-90442',
    storageBucket: 'budget-app-90442.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDigjgmRyBZx73m3PbnViAnFhxAR-lt7sc',
    appId: '1:956793271357:ios:70b57fc5c5148b33dc2654',
    messagingSenderId: '956793271357',
    projectId: 'budget-app-90442',
    storageBucket: 'budget-app-90442.appspot.com',
    iosBundleId: 'com.example.budgetApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDigjgmRyBZx73m3PbnViAnFhxAR-lt7sc',
    appId: '1:956793271357:ios:5070d8b782bf5f87dc2654',
    messagingSenderId: '956793271357',
    projectId: 'budget-app-90442',
    storageBucket: 'budget-app-90442.appspot.com',
    iosBundleId: 'com.example.budgetApp.RunnerTests',
  );
}
