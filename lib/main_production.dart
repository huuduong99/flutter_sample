import 'package:firebase_core/firebase_core.dart';

import 'package:flutter_sample/firebase_options_pro.dart';
import 'package:flutter_sample/main.dart';

Future<void> main() async {
  runMain(
    firebaseInitialization: () async {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
    },
  );
}
