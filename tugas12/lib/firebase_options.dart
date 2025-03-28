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
    apiKey: 'AIzaSyCP37RYjecG5PEgiU08RrJ5S2Rgo2koR3I',
    appId: '1:839835064192:web:755a9fb56b736eb6e05365',
    messagingSenderId: '839835064192',
    projectId: 'tugas12-sanber',
    authDomain: 'tugas12-sanber.firebaseapp.com',
    storageBucket: 'tugas12-sanber.firebasestorage.app',
    measurementId: 'G-X0FQFY0GLQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBkevn0bxQ1G66gi78KB6lCobzCvxy90Rc',
    appId: '1:839835064192:android:aadda96f3ce37f1ee05365',
    messagingSenderId: '839835064192',
    projectId: 'tugas12-sanber',
    storageBucket: 'tugas12-sanber.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB7_9084-MGkA8pU1JfKL-4JYrJmDf50fA',
    appId: '1:839835064192:ios:9f2749c2c5c5c7b3e05365',
    messagingSenderId: '839835064192',
    projectId: 'tugas12-sanber',
    storageBucket: 'tugas12-sanber.firebasestorage.app',
    iosBundleId: 'com.example.tugas12',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB7_9084-MGkA8pU1JfKL-4JYrJmDf50fA',
    appId: '1:839835064192:ios:9f2749c2c5c5c7b3e05365',
    messagingSenderId: '839835064192',
    projectId: 'tugas12-sanber',
    storageBucket: 'tugas12-sanber.firebasestorage.app',
    iosBundleId: 'com.example.tugas12',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCP37RYjecG5PEgiU08RrJ5S2Rgo2koR3I',
    appId: '1:839835064192:web:fbf21593d0c8ba62e05365',
    messagingSenderId: '839835064192',
    projectId: 'tugas12-sanber',
    authDomain: 'tugas12-sanber.firebaseapp.com',
    storageBucket: 'tugas12-sanber.firebasestorage.app',
    measurementId: 'G-17H6RZ9C1X',
  );
}
