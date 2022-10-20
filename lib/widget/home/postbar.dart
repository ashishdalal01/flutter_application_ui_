// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class PostBar extends StatelessWidget {
  const PostBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            iconSize: 80,
            onPressed: () => print('hello'),
            icon: const CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('image/ad20.jpeg'),
             ),
          ),
          TextButton(
            onPressed: (() {}),
            child: const Text(
              'whats on your mind?',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 70,
            child: VerticalDivider(
              color: Colors.black26,
            ),
          ),
          Column(
            children: [
              IconButton(
                onPressed: () => print('photo click'),
                icon: const Icon(
                  Icons.photo_album_outlined,
                  size: 30,
                ),
              ),
              const Text('photo'),
            ],
          )
        ],
      ),
    );
  }
}
