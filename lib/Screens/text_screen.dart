import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';

class TextPostTab extends StatelessWidget {
  final String postLink = 'https://example.com/text-post';

  const TextPostTab({super.key});

  Future<void> sharePost() async {
    await FlutterShare.share(
      title: 'Text Post',
      text: 'Check out this Text Post!',
      linkUrl: postLink,
      chooserTitle: 'Share Text Post',
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
          const Text('This is a pre interview assignment.'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: sharePost,
            child: const Text('Share Text Post'),
          ),
        ],
      ),
    );
  }
}
