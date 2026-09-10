import 'package:flutter/material.dart';

import '../models/post.dart';

class PostCard extends StatefulWidget {
	const PostCard({super.key, required this.post});

	final Post post;

	@override
	State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
	bool isLiked = false;
	bool isSaved = false;

	@override
	Widget build(BuildContext context) {
		final post = widget.post;
		return Container(
			margin: const EdgeInsets.only(bottom: 20),
			decoration: BoxDecoration(
				color: Colors.white,
				borderRadius: BorderRadius.circular(24),
			),
			clipBehavior: Clip.antiAlias,
			child: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: [
					Padding(
						padding: const EdgeInsets.fromLTRB(16, 14, 12, 12),
						child: Row(
							children: [
								CircleAvatar(
									radius: 20,
									backgroundImage: NetworkImage('https://i.pravatar.cc/100?u=${post.username}'),
								),
								const SizedBox(width: 10),
								Expanded(
									child: Column(
										crossAxisAlignment: CrossAxisAlignment.start,
										children: [
											Text(post.username, style: const TextStyle(fontWeight: FontWeight.w700)),
											Text('2 hours ago', style: TextStyle(color: Colors.grey.shade500, fontSize: 12)),
										],
									),
								),
								IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
							],
						),
					),
					AspectRatio(
						aspectRatio: 1.22,
						child: Image.network(
							post.image,
							fit: BoxFit.cover,
							errorBuilder: (context, error, stackTrace) => Container(color: const Color(0xFFE9E0D6)),
						),
					),
					Padding(
						padding: const EdgeInsets.fromLTRB(14, 12, 14, 16),
						child: Column(
							crossAxisAlignment: CrossAxisAlignment.start,
							children: [
								Row(
									children: [
										_ActionButton(
											icon: isLiked ? Icons.favorite : Icons.favorite_border,
											color: isLiked ? const Color(0xFFE75B46) : null,
											onTap: () => setState(() => isLiked = !isLiked),
										),
										_ActionButton(icon: Icons.chat_bubble_outline, onTap: () {}),
										_ActionButton(icon: Icons.send_outlined, onTap: () {}),
										const Spacer(),
										_ActionButton(
											icon: isSaved ? Icons.bookmark : Icons.bookmark_border,
											onTap: () => setState(() => isSaved = !isSaved),
										),
									],
								),
								Text('${post.likes + (isLiked ? 1 : 0)} likes', style: const TextStyle(fontWeight: FontWeight.w700)),
								const SizedBox(height: 6),
								Text.rich(TextSpan(children: [
									TextSpan(text: '${post.username}  ', style: const TextStyle(fontWeight: FontWeight.w700)),
									TextSpan(text: post.caption),
								])),
								const SizedBox(height: 7),
								Text('View all ${post.comments} comments', style: TextStyle(color: Colors.grey.shade500, fontSize: 13)),
							],
						),
					),
				],
			),
		);
	}
}

class _ActionButton extends StatelessWidget {
	const _ActionButton({required this.icon, required this.onTap, this.color});

	final IconData icon;
	final VoidCallback onTap;
	final Color? color;

	@override
	Widget build(BuildContext context) {
		return IconButton(
			visualDensity: VisualDensity.compact,
			padding: const EdgeInsets.only(right: 14),
			onPressed: onTap,
			icon: Icon(icon, color: color),
		);
	}
}
