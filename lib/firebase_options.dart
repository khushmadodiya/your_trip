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
    apiKey: 'AIzaSyAXHdFgtHGKR3dVaSMc021Gyp6mPnuX71w',
    appId: '1:771852745002:web:ad09fe089af0d4e241c653',
    messagingSenderId: '771852745002',
    projectId: 'your-trip-20ead',
    authDomain: 'your-trip-20ead.firebaseapp.com',
    databaseURL: 'https://your-trip-20ead-default-rtdb.firebaseio.com',
    storageBucket: 'your-trip-20ead.appspot.com',
    measurementId: 'G-K95LZ95NWL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAGi0XvZdl5fW1YRZ2Ydh5bYm8WYyyzNs8',
    appId: '1:771852745002:android:860ac831f538be1141c653',
    messagingSenderId: '771852745002',
    projectId: 'your-trip-20ead',
    databaseURL: 'https://your-trip-20ead-default-rtdb.firebaseio.com',
    storageBucket: 'your-trip-20ead.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD-YJmlYqGt-6p9qihubzTXw3oCrUrnHDw',
    appId: '1:771852745002:ios:20b7d302c137732f41c653',
    messagingSenderId: '771852745002',
    projectId: 'your-trip-20ead',
    databaseURL: 'https://your-trip-20ead-default-rtdb.firebaseio.com',
    storageBucket: 'your-trip-20ead.appspot.com',
    iosBundleId: 'com.example.temp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD-YJmlYqGt-6p9qihubzTXw3oCrUrnHDw',
    appId: '1:771852745002:ios:7883da92f782418f41c653',
    messagingSenderId: '771852745002',
    projectId: 'your-trip-20ead',
    databaseURL: 'https://your-trip-20ead-default-rtdb.firebaseio.com',
    storageBucket: 'your-trip-20ead.appspot.com',
    iosBundleId: 'com.example.temp.RunnerTests',
  );
}
