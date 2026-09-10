import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
	const CustomBottomNav({
		super.key,
		required this.currentIndex,
		required this.onTap,
	});

	final int currentIndex;
	final ValueChanged<int> onTap;

	@override
	Widget build(BuildContext context) {
		return NavigationBar(
			height: 72,
			selectedIndex: currentIndex,
			onDestinationSelected: onTap,
			backgroundColor: Colors.white,
			indicatorColor: const Color(0xFFFFDCD4),
			labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
			destinations: const [
				NavigationDestination(icon: Icon(Icons.home_outlined), selectedIcon: Icon(Icons.home), label: 'Home'),
				NavigationDestination(icon: Icon(Icons.search), label: 'Discover'),
				NavigationDestination(icon: Icon(Icons.add_box_outlined), selectedIcon: Icon(Icons.add_box), label: 'Create'),
				NavigationDestination(icon: Icon(Icons.notifications_none), selectedIcon: Icon(Icons.notifications), label: 'Activity'),
				NavigationDestination(icon: Icon(Icons.person_outline), selectedIcon: Icon(Icons.person), label: 'Profile'),
			],
		);
	}
}
