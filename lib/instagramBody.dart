import 'package:flutter/material.dart';
import 'package:instagram_clone/instagramList.dart';

class InstagramBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: InstagramList(),
        ),
      ],
    );
  }
}
