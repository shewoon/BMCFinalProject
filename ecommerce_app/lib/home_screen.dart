import 'package:flutter/material.dart';
import 'package:ecommerce_app/screen/home_screen.dart';
import 'package:ecommerce_app/screen/signup_screen.dart';
import 'package:flutter/material.dart';


// Part 2: Widget Definition
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          // 1. Add an IconButton to the AppBar
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // 2. Call Firebase to sign out
              Future<void> _signOut() async {
                await FirebaseAuth.instance.signOut();
              } 
              // We don't need to navigate. The AuthWrapper will handle it.
            },
          )
        ],
      ),
      body: const Center(
        child: Text('You are logged in!'),
      ),
    );
  }
}

