import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(const SocialMediaApp());
}

class SocialMediaApp extends StatelessWidget {
  const SocialMediaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social Media App',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF7F4EF),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE75B46),
          brightness: Brightness.light,
        ).copyWith(
          primary: const Color(0xFFE75B46),
          onPrimary: Colors.white,
          surface: const Color(0xFFF7F4EF),
          onSurface: const Color(0xFF202124),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF7F4EF),
          foregroundColor: Color(0xFF202124),
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(color: Color(0xFFE75B46), width: 1.5),
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
