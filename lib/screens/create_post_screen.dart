import 'package:flutter/material.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  final captionController = TextEditingController();
  bool hasSelectedImage = false;

  @override
  void dispose() {
    captionController.dispose();
    super.dispose();
  }

  void _publishPost() {
    if (!hasSelectedImage && captionController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Add a photo or write a caption first')),
      );
      return;
    }

    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Post published')));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New post', style: TextStyle(fontWeight: FontWeight.w700)),
        actions: [
          TextButton(onPressed: _publishPost, child: const Text('Publish', style: TextStyle(fontWeight: FontWeight.w700))),
          const SizedBox(width: 8),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 28),
        children: [
          AspectRatio(
            aspectRatio: 1.1,
            child: Container(
              decoration: BoxDecoration(color: const Color(0xFFE9E0D6), borderRadius: BorderRadius.circular(24)),
              child: hasSelectedImage
                  ? const Center(child: Icon(Icons.image, size: 80, color: Color(0xFF7C7772)))
                  : const Center(child: Icon(Icons.add_photo_alternate_outlined, size: 62, color: Color(0xFF7C7772))),
            ),
          ),
          const SizedBox(height: 14),
          OutlinedButton.icon(
            onPressed: () => setState(() => hasSelectedImage = true),
            icon: const Icon(Icons.photo_library_outlined),
            label: Text(hasSelectedImage ? 'Image Selected' : 'Select Image'),
          ),
          const SizedBox(height: 26),
          TextField(
            controller: captionController,
            maxLines: 5,
            decoration: const InputDecoration(
              hintText: 'What is on your mind?',
              alignLabelWithHint: true,
            ),
          ),
          const SizedBox(height: 22),
          const Text('Add to your post', style: TextStyle(fontWeight: FontWeight.w700)),
          const SizedBox(height: 10),
          Row(children: [
            _PostOption(icon: Icons.location_on_outlined, label: 'Location'),
            _PostOption(icon: Icons.person_add_alt_1_outlined, label: 'Tag people'),
            _PostOption(icon: Icons.mood_outlined, label: 'Feeling'),
          ]),
        ],
      ),
    );
  }
}

class _PostOption extends StatelessWidget {
  const _PostOption({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(children: [
        Icon(icon, color: const Color(0xFFE75B46)),
        const SizedBox(height: 5),
        Text(label, style: const TextStyle(fontSize: 11)),
      ]),
    );
  }
}
