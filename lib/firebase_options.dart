import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyActLWuVUAxLtIxlLQWxc3YclnXIytVmMs',
    appId: '1:775861525072:web:2691a998e56a5d0f780f55',
    messagingSenderId: '775861525072',
    projectId: 'device-streaming-00b4e524',
    authDomain: 'device-streaming-00b4e524.firebaseapp.com',
    storageBucket: 'device-streaming-00b4e524.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDlz0jncKh_WIZap__6AOmt2vz9aYUcmnc',
    appId: '1:775861525072:android:b3fe641aee02fea9780f55',
    messagingSenderId: '775861525072',
    projectId: 'device-streaming-00b4e524',
    storageBucket: 'device-streaming-00b4e524.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC6h6BhiUxncyhrcnqWRn_mb6bXmI45XYM',
    appId: '1:775861525072:ios:1d5bb8b493e69630780f55',
    messagingSenderId: '775861525072',
    projectId: 'device-streaming-00b4e524',
    storageBucket: 'device-streaming-00b4e524.appspot.com',
    iosBundleId: 'com.example.eventlyApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC6h6BhiUxncyhrcnqWRn_mb6bXmI45XYM',
    appId: '1:775861525072:ios:1d5bb8b493e69630780f55',
    messagingSenderId: '775861525072',
    projectId: 'device-streaming-00b4e524',
    storageBucket: 'device-streaming-00b4e524.appspot.com',
    iosBundleId: 'com.example.eventlyApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyActLWuVUAxLtIxlLQWxc3YclnXIytVmMs',
    appId: '1:775861525072:web:d51ea832e9587118780f55',
    messagingSenderId: '775861525072',
    projectId: 'device-streaming-00b4e524',
    authDomain: 'device-streaming-00b4e524.firebaseapp.com',
    storageBucket: 'device-streaming-00b4e524.appspot.com',
  );
}
