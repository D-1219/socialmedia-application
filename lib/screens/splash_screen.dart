import 'dart:async';

import 'package:flutter/material.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFF7F4EF), Color(0xFFFFDCD4)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.waves_rounded, size: 70, color: Color(0xFFE75B46)),
              SizedBox(height: 18),
              Text('mingle', style: TextStyle(fontSize: 42, fontWeight: FontWeight.w800, color: Color(0xFF202124), letterSpacing: -2)),
              SizedBox(height: 8),
              Text('share your little joys', style: TextStyle(color: Color(0xFF7C7772))),
            ],
          ),
        ),
      ),
    );
  }
}
