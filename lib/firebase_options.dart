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
    apiKey: 'AIzaSyB0T3dFHMGaifwz-7csgtq-jDNZl5Y_KI8',
    appId: '1:346385073616:web:c39f599fee80451abae5d5',
    messagingSenderId: '346385073616',
    projectId: 'chatme-313fe',
    authDomain: 'chatme-313fe.firebaseapp.com',
    storageBucket: 'chatme-313fe.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDpvk7-1Cyci5eBu3sAWyf6PR7VWhYXAw4',
    appId: '1:346385073616:android:9a3d8089c5bb05f0bae5d5',
    messagingSenderId: '346385073616',
    projectId: 'chatme-313fe',
    storageBucket: 'chatme-313fe.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD5uMivocZw_Kou_-soW7frDPYWiP-yxL0',
    appId: '1:346385073616:ios:f66ca1870da48809bae5d5',
    messagingSenderId: '346385073616',
    projectId: 'chatme-313fe',
    storageBucket: 'chatme-313fe.appspot.com',
    iosClientId: '346385073616-uk0j6cgm4f61oj7ihgi9uh3tq52og9kf.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatmeApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD5uMivocZw_Kou_-soW7frDPYWiP-yxL0',
    appId: '1:346385073616:ios:05d822fe42fba3cebae5d5',
    messagingSenderId: '346385073616',
    projectId: 'chatme-313fe',
    storageBucket: 'chatme-313fe.appspot.com',
    iosClientId: '346385073616-s5ulesbh5jkkgvad613hs3cf68ridjon.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatmeApp.RunnerTests',
  );
}
