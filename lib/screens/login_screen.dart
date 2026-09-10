import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(28, 60, 28, 24),
          children: [
            const Icon(Icons.waves_rounded, size: 42, color: Color(0xFFE75B46)),
            const SizedBox(height: 26),
            const Text('Welcome back', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800, letterSpacing: -1)),
            const SizedBox(height: 8),
            const Text('Your people are only a tap away.', style: TextStyle(color: Color(0xFF7C7772), fontSize: 15)),
            const SizedBox(height: 38),
            const TextField(decoration: InputDecoration(labelText: 'Email address', prefixIcon: Icon(Icons.mail_outline))),
            const SizedBox(height: 14),
            const TextField(obscureText: true, decoration: InputDecoration(labelText: 'Password', prefixIcon: Icon(Icons.lock_outline))),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: () {}, child: const Text('Forgot password?')),
            ),
            const SizedBox(height: 12),
            FilledButton(
              style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(54)),
              onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomeScreen())),
              child: const Text('Log in', style: TextStyle(fontWeight: FontWeight.w700)),
            ),
            const SizedBox(height: 28),
            Row(children: [Expanded(child: Divider(color: Colors.grey.shade300)), const Padding(padding: EdgeInsets.symmetric(horizontal: 12), child: Text('or')), Expanded(child: Divider(color: Colors.grey.shade300))]),
            const SizedBox(height: 22),
            OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.g_mobiledata), label: const Text('Continue with Google'), style: OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(52))),
            const SizedBox(height: 30),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text("Don't have an account? ", style: TextStyle(color: Color(0xFF7C7772))),
              TextButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const RegisterScreen())), child: const Text('Sign up')),
            ]),
          ],
        ),
      ),
    );
  }
}
