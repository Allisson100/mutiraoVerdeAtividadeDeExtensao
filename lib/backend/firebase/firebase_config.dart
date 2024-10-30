import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyARkbjIoxZkdFZs2099OCUG0ILxcYw8JQg",
            authDomain: "limpeza-2a83b.firebaseapp.com",
            projectId: "limpeza-2a83b",
            storageBucket: "limpeza-2a83b.firebasestorage.app",
            messagingSenderId: "674861373433",
            appId: "1:674861373433:web:5a002b2f4af5c985910f28"));
  } else {
    await Firebase.initializeApp();
  }
}
