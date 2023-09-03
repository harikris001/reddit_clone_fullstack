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
    apiKey: 'AIzaSyDxt8p-PqzHbGi4IEk9_J3_KIwRtnHW7sM',
    appId: '1:925634881092:web:1302d8b6b2d0999e857e11',
    messagingSenderId: '925634881092',
    projectId: 'reddit-clone-fullstack',
    authDomain: 'reddit-clone-fullstack.firebaseapp.com',
    storageBucket: 'reddit-clone-fullstack.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCjWB4oM9ddX3kJU1xCxy8BXBF8KjLouLo',
    appId: '1:925634881092:android:d01b2d881602dae0857e11',
    messagingSenderId: '925634881092',
    projectId: 'reddit-clone-fullstack',
    storageBucket: 'reddit-clone-fullstack.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDBZEgh5MryUFc9xyxC4UwvxUUMEFucWiI',
    appId: '1:925634881092:ios:ac20c6bffcd85f24857e11',
    messagingSenderId: '925634881092',
    projectId: 'reddit-clone-fullstack',
    storageBucket: 'reddit-clone-fullstack.appspot.com',
    iosClientId: '925634881092-b8neq3ot893t4gumibdidhb6de3td0m1.apps.googleusercontent.com',
    iosBundleId: 'com.harikris.dev.redditCloneFullstack',
  );
}