import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dashboard.dart';
import 'loginform.dart';
import 'signupform.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAhzIHU2meoL557TiXWHrW1WROuNIB3YqA",
            authDomain: "jennieapp-12a6f.firebaseapp.com",
            projectId: "jennieapp-12a6f",
            storageBucket: "jennieapp-12a6f.appspot.com",
            messagingSenderId: "690613082785",
            appId: "1:690613082785:web:753238815dbb01994ceee0",
            measurementId: "G-XC235R2K8D"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Login',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginForm(),
        '/dashboard': (context) => const Dashboard(),
      },
    );
  }
}
