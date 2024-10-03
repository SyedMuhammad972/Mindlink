import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const MindLinkAssignment());
}

class MindLinkAssignment extends StatelessWidget {
  const MindLinkAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

