import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import  'package:ecommerce_app/screens/login_screen.dart';

void main() async {
  // 1. Make the 'main' function asynchronous

  // 2. Ensure Flutter is ready before calling native code
  WidgetsFlutterBinding.ensureInitialized();

  // 3. Initialize Firebase
  await Firebase.initializeApp(
    // 4. Use the options from our generated file
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // 5. Run the app (this line is already here)
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eCommerce App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      // 1. Change this line
      home: const LoginScreen(), // 2. Set LoginScreen as the home
    );
  }
}

