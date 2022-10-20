import 'package:flutter/material.dart';
import 'package:flutter_application_ui/widget/home/menubar.dart';
import 'package:flutter_application_ui/widget/home/post.dart';
import 'package:flutter_application_ui/widget/home/postbar.dart';
import 'package:flutter_application_ui/widget/home/storybar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(children: const [
        PostBar(),
        Divider(thickness: 3, color: Colors.black26),
        MenuBar(),
        Divider(thickness: 10, color: Colors.black12),
        StoryBar(),
        Post(),
      ]),
    );
  }
}
