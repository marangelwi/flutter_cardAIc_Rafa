import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAW7Q9GfRBNEt3T7P2PlNCoXxj8SHvo5UI",
            authDomain: "cardaic.firebaseapp.com",
            projectId: "cardaic",
            storageBucket: "cardaic.appspot.com",
            messagingSenderId: "868234497088",
            appId: "1:868234497088:web:04afb9511d7779b9f763a5",
            measurementId: "G-GGRGLEV9HF"));
  } else {
    await Firebase.initializeApp();
  }
}
