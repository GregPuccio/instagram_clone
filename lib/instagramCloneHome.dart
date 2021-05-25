import 'package:flutter/material.dart';
import 'package:instagram_clone/instagramBody.dart';

class InstagramCloneHome extends StatelessWidget {
  final topBar = AppBar(
    backgroundColor: Color(0xfff8faf8),
    elevation: 1,
    centerTitle: true,
    leading: IconButton(
      icon: Icon(Icons.camera_alt),
      onPressed: () {},
    ),
    title: Text(
      "Instagram",
      style: TextStyle(fontStyle: FontStyle.italic),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.send),
      ),
    ],
  );

  final bottomNavBar = BottomAppBar(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Icon(Icons.add_box)),
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
        IconButton(onPressed: () {}, icon: Icon(Icons.account_box)),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      bottomNavigationBar: bottomNavBar,
      body: InstagramBody(),
    );
  }
}
