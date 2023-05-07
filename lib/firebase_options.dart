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
    apiKey: 'AIzaSyBRrNYAjk9CzUtm_8WB6Evl0kWR9nhw0a8',
    appId: '1:654450552371:web:d956e0bdb849f2f341bd46',
    messagingSenderId: '654450552371',
    projectId: 'fease-money',
    authDomain: 'fease-money.firebaseapp.com',
    storageBucket: 'fease-money.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAxKH1Oc6AGlB151OBjoU1qWITtfJ4JlZg',
    appId: '1:654450552371:android:c1c9a3fa3a3f88fd41bd46',
    messagingSenderId: '654450552371',
    projectId: 'fease-money',
    storageBucket: 'fease-money.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBKFQErtG3rv2GF-Bqxbp-isKOykEzCXEk',
    appId: '1:654450552371:ios:3d3d3b0a6fe20ace41bd46',
    messagingSenderId: '654450552371',
    projectId: 'fease-money',
    storageBucket: 'fease-money.appspot.com',
    iosClientId: '654450552371-dfk8mvjctjuspd0t5dm5lvlunspgp5u9.apps.googleusercontent.com',
    iosBundleId: 'com.nikhil.fease',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBKFQErtG3rv2GF-Bqxbp-isKOykEzCXEk',
    appId: '1:654450552371:ios:3d3d3b0a6fe20ace41bd46',
    messagingSenderId: '654450552371',
    projectId: 'fease-money',
    storageBucket: 'fease-money.appspot.com',
    iosClientId: '654450552371-dfk8mvjctjuspd0t5dm5lvlunspgp5u9.apps.googleusercontent.com',
    iosBundleId: 'com.nikhil.fease',
  );
}
