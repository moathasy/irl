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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCUaJX6gY8ZUHSNkhr6XW3zPYjJDeHyEb4',
    appId: '1:567612632016:android:fdb8a6704dda9a4d2667d5',
    messagingSenderId: '567612632016',
    projectId: 'irl-graduate',
    storageBucket: 'irl-graduate.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCNfVf426yoBpeOBKK0oJuIlVCb2s6AmW8',
    appId: '1:567612632016:ios:54d8bd5e238e9ae12667d5',
    messagingSenderId: '567612632016',
    projectId: 'irl-graduate',
    storageBucket: 'irl-graduate.appspot.com',
    androidClientId: '567612632016-ms5881n70ra64p7rfi7i660pucknr2pb.apps.googleusercontent.com',
    iosClientId: '567612632016-6mao1g62r07acbdh0iqujo5da0drbasa.apps.googleusercontent.com',
    iosBundleId: 'com.graduation.project.irl',
  );
}
