
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app/MyApp.dart';

void main() async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(
            options: const FirebaseOptions(
                apiKey: "AIzaSyBR2gNad6Qe_xZH02pFJ1bG-pqZqj9GNEU",
                appId: "1:68900926093:android:c6e9ab047516653d4c28c4",
                messagingSenderId: "68900926093",
                projectId: "designway-f5334"
            ),);
      runApp( MyApp());
}



