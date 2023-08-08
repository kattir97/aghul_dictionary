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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCLGR5BG37hp14wR3xnPka0fLF9tFsyddQ',
    appId: '1:832289861318:web:129a87e79387f7904731c7',
    messagingSenderId: '832289861318',
    projectId: 'aghul-dictionary',
    authDomain: 'aghul-dictionary.firebaseapp.com',
    storageBucket: 'aghul-dictionary.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCf0J1Uy3DVFyORRfmLSyfr42LLig5n8rA',
    appId: '1:832289861318:android:d9772d0d4d7256564731c7',
    messagingSenderId: '832289861318',
    projectId: 'aghul-dictionary',
    storageBucket: 'aghul-dictionary.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7D2CLxvU_k0Y-qx-DqiKWnjYkZZhP00k',
    appId: '1:832289861318:ios:32228d72aaddfe044731c7',
    messagingSenderId: '832289861318',
    projectId: 'aghul-dictionary',
    storageBucket: 'aghul-dictionary.appspot.com',
    iosClientId: '832289861318-4dtfhg1i64l1floo5m6suhe8pg2eeoql.apps.googleusercontent.com',
    iosBundleId: 'com.example.aghulDictionary',
  );
}
