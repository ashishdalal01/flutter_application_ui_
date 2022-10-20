import 'package:flutter/material.dart';
import 'package:flutter_application_ui/modles/post_model.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          for (var i = 0; i < postData.length; i++) ...[
            Row(
              children: [
                IconButton(
                  iconSize: 90,
                  onPressed: () => {},
                  icon:  CircleAvatar(
                    radius: 120.70,
                    backgroundImage:AssetImage(
                      postData[i].avatarImage,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        postData[i].name,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Wrap(
                        children: [
                          Text(
                            postData[i].time,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                            ),
                          ),
                          const Icon(
                            Icons.public,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(
                  iconSize: 45,
                  onPressed: postData[i].moreOnPressed,
                  icon: const Icon(
                    Icons.more_horiz_outlined,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.00),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      postData[i].postTitle,
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Image(
                    image: AssetImage(postData[i].postImage),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: postData[i].likeOnPressed,
                      icon: const Icon(Icons.thumb_up_alt_outlined),
                    ),
                    const Text(
                      '786',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: postData[i].commentOnPressed,
                      icon: const Icon(Icons.message_outlined),
                    ),
                    const Text(
                      '20',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: postData[i].shareOnPressed,
                      icon: const Icon(Icons.share_outlined),
                    ),
                  ],
                ),
              ],
            ),
          ]
        ],
      ),
    );
  }
}
