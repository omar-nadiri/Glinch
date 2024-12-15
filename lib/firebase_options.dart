// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCjWKe9NrA0Asupk5I_5Ap3caMx0FEuNtI',
    appId: '1:873375556372:web:d6ebd3db9eda349deed801',
    messagingSenderId: '873375556372',
    projectId: 'glitch-296f8',
    authDomain: 'glitch-296f8.firebaseapp.com',
    storageBucket: 'glitch-296f8.firebasestorage.app',
    measurementId: 'G-R241TE1044',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBR8jBdYx8WdrvddTXqQCg2mqxf3NfmoZ0',
    appId: '1:873375556372:android:9ffafcc76dc3eb77eed801',
    messagingSenderId: '873375556372',
    projectId: 'glitch-296f8',
    storageBucket: 'glitch-296f8.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCM3lBc3v0Hmdk0RjwxsqDtGO0u6CEFTgM',
    appId: '1:873375556372:ios:d9dcff4f1c337507eed801',
    messagingSenderId: '873375556372',
    projectId: 'glitch-296f8',
    storageBucket: 'glitch-296f8.firebasestorage.app',
    iosBundleId: 'com.example.glinch',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCM3lBc3v0Hmdk0RjwxsqDtGO0u6CEFTgM',
    appId: '1:873375556372:ios:d9dcff4f1c337507eed801',
    messagingSenderId: '873375556372',
    projectId: 'glitch-296f8',
    storageBucket: 'glitch-296f8.firebasestorage.app',
    iosBundleId: 'com.example.glinch',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCjWKe9NrA0Asupk5I_5Ap3caMx0FEuNtI',
    appId: '1:873375556372:web:5e2d88a214599277eed801',
    messagingSenderId: '873375556372',
    projectId: 'glitch-296f8',
    authDomain: 'glitch-296f8.firebaseapp.com',
    storageBucket: 'glitch-296f8.firebasestorage.app',
    measurementId: 'G-HE84YBM6FT',
  );
}