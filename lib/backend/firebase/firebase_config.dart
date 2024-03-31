import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAEpysnFY7EnvV50CmwVvz9waePVZMFjdI",
            authDomain: "comicverse-b7b5d.firebaseapp.com",
            projectId: "comicverse-b7b5d",
            storageBucket: "comicverse-b7b5d.appspot.com",
            messagingSenderId: "901312310049",
            appId: "1:901312310049:web:a41d274681b6ed192f2c60",
            measurementId: "G-J345CFG0XQ"));
  } else {
    await Firebase.initializeApp();
  }
}
