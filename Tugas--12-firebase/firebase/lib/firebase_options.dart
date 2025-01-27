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
    apiKey: 'AIzaSyAT-nSaJS3UcRaNWXhccf_EumnX9gDO5v4',
    appId: '1:36881568311:web:141b2e487ae4c45bbb25b2',
    messagingSenderId: '36881568311',
    projectId: 'authe-17305',
    authDomain: 'authe-17305.firebaseapp.com',
    storageBucket: 'authe-17305.appspot.com',
    measurementId: 'G-JSDTLQKN9S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDdg2luod_SZGk6uQcABo-gH77XhUWFc-Q',
    appId: '1:36881568311:android:e6b5215730baff1cbb25b2',
    messagingSenderId: '36881568311',
    projectId: 'authe-17305',
    storageBucket: 'authe-17305.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC6bxQ8dwOZzn87WRjm8LEG8jzF_vyla8U',
    appId: '1:36881568311:ios:786dc7ff219ffb82bb25b2',
    messagingSenderId: '36881568311',
    projectId: 'authe-17305',
    storageBucket: 'authe-17305.appspot.com',
    iosBundleId: 'com.example.firebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC6bxQ8dwOZzn87WRjm8LEG8jzF_vyla8U',
    appId: '1:36881568311:ios:786dc7ff219ffb82bb25b2',
    messagingSenderId: '36881568311',
    projectId: 'authe-17305',
    storageBucket: 'authe-17305.appspot.com',
    iosBundleId: 'com.example.firebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAT-nSaJS3UcRaNWXhccf_EumnX9gDO5v4',
    appId: '1:36881568311:web:755e475177934bbfbb25b2',
    messagingSenderId: '36881568311',
    projectId: 'authe-17305',
    authDomain: 'authe-17305.firebaseapp.com',
    storageBucket: 'authe-17305.appspot.com',
    measurementId: 'G-MLV4GYXRTV',
  );
}
