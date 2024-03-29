// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_dev.dart';
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
    apiKey: 'AIzaSyCrVFYtyhauTNafP_zqpvT3czVXIFgMIJI',
    appId: '1:506975803166:android:41dc5df18f6c2b0cca9b0f',
    messagingSenderId: '506975803166',
    projectId: 'push-notification-e17b5',
    storageBucket: 'push-notification-e17b5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBTXBd3MVdfd6_VaZCDoISCGcSVFZVCWAE',
    appId: '1:506975803166:ios:30224b1aaa906765ca9b0f',
    messagingSenderId: '506975803166',
    projectId: 'push-notification-e17b5',
    storageBucket: 'push-notification-e17b5.appspot.com',
    androidClientId: '506975803166-0oaarf6fj1skujhv81ma2g3keamspbmq.apps.googleusercontent.com',
    iosClientId: '506975803166-atdd87m59mtpfpsns3ion06ql474q9ci.apps.googleusercontent.com',
    iosBundleId: 'com.dev.flutterSample.app',
  );
}
