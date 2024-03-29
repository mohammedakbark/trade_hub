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
    apiKey: 'AIzaSyBE-Q5DQg4qX0SvhZiud_pINuYN0ntD6jg',
    appId: '1:710015710975:web:77679a670af37431babeca',
    messagingSenderId: '710015710975',
    projectId: 'tradehub-e84ad',
    authDomain: 'tradehub-e84ad.firebaseapp.com',
    storageBucket: 'tradehub-e84ad.appspot.com',
    measurementId: 'G-N82F0M5K5P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBvUOwT54CSjXBIqGLsedbAVR4tDvH-ADI',
    appId: '1:710015710975:android:b15bdb483cd6485ebabeca',
    messagingSenderId: '710015710975',
    projectId: 'tradehub-e84ad',
    storageBucket: 'tradehub-e84ad.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCpHXv8fc_7pXrSxocOhxOQGCczxRWjatw',
    appId: '1:710015710975:ios:64998d7fecf47544babeca',
    messagingSenderId: '710015710975',
    projectId: 'tradehub-e84ad',
    storageBucket: 'tradehub-e84ad.appspot.com',
    iosBundleId: 'com.example.tradeHub',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCpHXv8fc_7pXrSxocOhxOQGCczxRWjatw',
    appId: '1:710015710975:ios:675c3f93540ffa30babeca',
    messagingSenderId: '710015710975',
    projectId: 'tradehub-e84ad',
    storageBucket: 'tradehub-e84ad.appspot.com',
    iosBundleId: 'com.example.tradeHub.RunnerTests',
  );
}
