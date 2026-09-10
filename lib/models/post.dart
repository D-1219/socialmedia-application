class Post {
  final String username;
  final String image;
  final String caption;
  int likes;
  int comments;

  Post({
    required this.username,
    required this.image,
    required this.caption,
    this.likes = 0,
    this.comments = 0,
  });
}
