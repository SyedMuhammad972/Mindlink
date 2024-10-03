import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';

class VideoPostTab extends StatelessWidget {
  final String postLink = 'https://example.com/video-post';

  const VideoPostTab({super.key});

  Future<void> sharePost() async {
    await FlutterShare.share(
      title: 'Video Post',
      text: 'Check out this Video Post!',
      linkUrl: postLink,
      chooserTitle: 'Share Video Post',
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

  Widget body(double screenWidth, double screenHeight) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.videocam, size: 100),
          const Text('This is a video post.'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: sharePost,
            child: const Text('Share Video Post'),
          ),
        ],
      ),
    );
  }
}
