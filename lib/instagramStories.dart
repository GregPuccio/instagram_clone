import 'package:flutter/material.dart';

class InstagramStories extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Text(
          "Stories",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            Icon(Icons.play_arrow),
            Text(
              "Watch All",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ],
  );
  final stories = Flexible(
    child: ListView.builder(
      itemCount: 30,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        Widget story = CircleAvatar(
          minRadius: 30,
          backgroundImage: NetworkImage(
            "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=3900&q=80",
          ),
        );
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              story,
              if (index == 0)
                CircleAvatar(
                  maxRadius: 10,
                  child: Icon(
                    Icons.add,
                    size: 20,
                  ),
                ),
            ],
          ),
        );
      },
    ),
  );
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            topText,
            stories,
          ],
        ),
      ),
    );
  }
}
