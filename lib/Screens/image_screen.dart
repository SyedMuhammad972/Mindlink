import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';

class ImagePostTab extends StatelessWidget {
  final String postLink = 'https://example.com/image-post';

  const ImagePostTab({super.key});

  Future<void> sharePost() async {
    await FlutterShare.share(
      title: 'Image Post',
      text: 'Check out this Image Post!',
      linkUrl: postLink,
      chooserTitle: 'Share Image Post',
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: body(screenWidth, screenHeight),
    );
  }

  Widget body(
    double screenWidth,
    double screenHeight,
  ) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.image, size: 100),
          const Text('This is a image post.'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: sharePost,
            child: const Text('Share Image Post'),
          ),
        ],
      ),
    );
  }
}
