// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_ui/modles/story_model.dart';

class StoryBar extends StatelessWidget {
  const StoryBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 10,
          children: [
            Container(
              height: 225,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: () => print(
                      'Add story clicked',
                    ),
                    child: Column(children: [
                      Container(
                        width: 170,
                        height: 150,
                        margin: const EdgeInsets.only(bottom: 20),
                        child: const ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          child: Image(
                            image: AssetImage('image/ad2.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () => {print('hello')},
                        child: const Text(
                          'Add to story',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.green,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
                  ),
                  Positioned(
                    bottom: 32,
                    left: 37,
                    child: IconButton(
                      onPressed: () => {},
                      icon: const Icon(
                        Icons.add_circle_rounded,
                      ),
                      iconSize: 50,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
            for (var i = 0; i < storyData.length; i++) ...[
              SizedBox(
                height: 230,
                width: 150,
                child: Stack(fit: StackFit.expand, children: [
                  GestureDetector(
                    onTap: storyData[i].onTap,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      child: Image(
                        image: AssetImage(storyData[i].image),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Text(
                      storyData[i].userName,
                      style: const TextStyle(
                          color: Colors.pink,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
