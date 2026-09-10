import 'package:flutter/material.dart';
class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      (Icons.favorite, Colors.red, 'Priya liked your post'),
      (Icons.comment, Colors.blue, 'Arun commented on your post'),
      (Icons.person, Colors.green, 'Divya started following you'),
      (Icons.favorite, Colors.red, 'Karthik liked your photo'),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Notifications')),
      body: ListView.separated(
        itemCount: notifications.length,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return ListTile(
            leading: Icon(notification.$1, color: notification.$2),
            title: Text(notification.$3),
          );
        },
      ),
    );
  }
}
