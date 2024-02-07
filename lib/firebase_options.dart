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
/* await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
 );*/
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
    apiKey: 'AIzaSyC-GyD4olw6C3Of75kB1n541JDS0N40XwY',
    appId: '1:839672092545:web:4818077ea2336fe5b6ba80',
    messagingSenderId: '839672092545',
    projectId: 'firestore-crud-2120f',
    authDomain: 'firestore-crud-2120f.firebaseapp.com',
    storageBucket: 'firestore-crud-2120f.appspot.com',
    measurementId: 'G-QB8J2MJGJK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB1ZhPbpIy7_zy-88zkD7cuA7ZD_8Mccxs',
    appId: '1:839672092545:android:e71122361ace7bc5b6ba80',
    messagingSenderId: '839672092545',
    projectId: 'firestore-crud-2120f',
    storageBucket: 'firestore-crud-2120f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCi2HBEWHXmvzxBzp7ZbPa27xWXmKenUMc',
    appId: '1:839672092545:ios:b9c0b2191c44cb4cb6ba80',
    messagingSenderId: '839672092545',
    projectId: 'firestore-crud-2120f',
    storageBucket: 'firestore-crud-2120f.appspot.com',
    iosBundleId: 'com.example.wedemy',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCi2HBEWHXmvzxBzp7ZbPa27xWXmKenUMc',
    appId: '1:839672092545:ios:e5aea0c72096b778b6ba80',
    messagingSenderId: '839672092545',
    projectId: 'firestore-crud-2120f',
    storageBucket: 'firestore-crud-2120f.appspot.com',
    iosBundleId: 'com.example.wedemy.RunnerTests',
  );
}
