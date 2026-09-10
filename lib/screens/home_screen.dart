import 'package:flutter/material.dart';

import '../data/sample_data.dart';
import '../widgets/custom_button_nav.dart';
import '../widgets/post_card.dart';
import 'create_post_screen.dart';
import 'notifications_screen.dart';
import 'profile_screen.dart';
import 'search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  int feedTab = 0;

  void _handleNavigation(int index) {
    if (index == 0) {
      setState(() => selectedIndex = 0);
      return;
    }

    final destinations = <Widget>[
      const SearchScreen(),
      const CreatePostScreen(),
      const NotificationsScreen(),
      const ProfileScreen(),
    ];
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => destinations[index - 1]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20,
        title: const Text(
          'mingle',
          style: TextStyle(
            color: Color(0xFFE75B46),
            fontSize: 27,
            fontWeight: FontWeight.w800,
            letterSpacing: -1,
          ),
        ),
        actions: [
          IconButton(
            tooltip: 'Messages',
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Your messages are coming soon')),
            ),
            icon: const Icon(Icons.mail_outline),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: RefreshIndicator(
        color: const Color(0xFFE75B46),
        onRefresh: () async =>
            Future<void>.delayed(const Duration(milliseconds: 500)),
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 4, 20, 28),
          children: [
            _buildGreeting(),
            const SizedBox(height: 20),
            _buildStories(),
            const SizedBox(height: 22),
            _buildComposer(),
            const SizedBox(height: 22),
            _buildFeedSwitcher(),
            const SizedBox(height: 18),
            ...posts.map((post) => PostCard(post: post)),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNav(
        currentIndex: selectedIndex,
        onTap: _handleNavigation,
      ),
    );
  }

  Widget _buildGreeting() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good morning, Divya',
                style: TextStyle(color: Color(0xFF7C7772), fontSize: 13),
              ),
              SizedBox(height: 4),
              Text(
                'See what’s happening',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        CircleAvatar(
          radius: 22,
          backgroundColor: const Color(0xFFFFDCD4),
          backgroundImage: const NetworkImage(
            'https://i.pravatar.cc/100?u=divya',
          ),
        ),
      ],
    );
  }

  Widget _buildStories() {
    const storyNames = ['Your story', 'Priya', 'Arun', 'Maya', 'Karthik'];
    return SizedBox(
      height: 91,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: storyNames.length,
        separatorBuilder: (_, _) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          final isOwnStory = index == 0;
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isOwnStory
                        ? const Color(0xFFD9D2C9)
                        : const Color(0xFFE75B46),
                    width: 2,
                  ),
                ),
                child: CircleAvatar(
                  radius: 27,
                  backgroundColor: const Color(0xFFE9E0D6),
                  backgroundImage: isOwnStory
                      ? null
                      : NetworkImage('https://i.pravatar.cc/100?u=story$index'),
                  child: isOwnStory
                      ? const Icon(Icons.add, color: Color(0xFFE75B46))
                      : null,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                storyNames[index],
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildComposer() {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const CreatePostScreen()),
      ),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: const Color(0xFFECE6DE)),
        ),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                'https://i.pravatar.cc/100?u=divya',
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                'Share a moment...',
                style: TextStyle(color: Color(0xFF9A938C)),
              ),
            ),
            Icon(Icons.image_outlined, color: Colors.grey.shade500),
          ],
        ),
      ),
    );
  }

  Widget _buildFeedSwitcher() {
    return Row(
      children: [
        _FeedTab(
          label: 'For you',
          selected: feedTab == 0,
          onTap: () => setState(() => feedTab = 0),
        ),
        const SizedBox(width: 22),
        _FeedTab(
          label: 'Following',
          selected: feedTab == 1,
          onTap: () => setState(() => feedTab = 1),
        ),
      ],
    );
  }
}

class _FeedTab extends StatelessWidget {
  const _FeedTab({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: selected
                  ? const Color(0xFF202124)
                  : const Color(0xFF9A938C),
            ),
          ),
          const SizedBox(height: 7),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: 3,
            width: selected ? 28 : 0,
            decoration: BoxDecoration(
              color: const Color(0xFFE75B46),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ],
      ),
    );
  }
}
