import 'package:flutter/material.dart';
import 'package:flutter_application_ui/modles/video_model.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'videos',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              child: Tooltip(
                message: 'Play video Automatically',
                child: Switch(
                  activeColor: Colors.blue,
                  activeTrackColor: Colors.green,
                  inactiveThumbColor: Colors.red,
                  value: isSwitched,
                  onChanged: (value) {
                    setState(
                      () {
                        isSwitched = value;
                        print(isSwitched);
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      const Divider(
        thickness: 3,
        color: Colors.black26,
      ),
      Expanded(
        child: ListView.builder(
          itemCount: videoData.length,
          itemBuilder: (context, i) => Column(
            children: [
              Row(
                children: [
                  IconButton(
                    iconSize: 50,
                    onPressed: videoData[i].avatarOnPressed,
                    icon: CircleAvatar(
                      radius: 80.40,
                      backgroundImage: AssetImage(
                        videoData[i].avatarImage,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              videoData[i].name,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.20,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                              onPressed: () => {},
                              child: const Text(
                                'Follow',
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Wrap(
                          spacing: 10,
                          children: [
                            Text(
                              videoData[i].time,
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            const Icon(Icons.public),
                          ],
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    iconSize: 30,
                    onPressed: videoData[i].moreOnPressed,
                    icon: const Icon(Icons.more_horiz_outlined),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    YoutubePlayer(
                      controller: videoData[i].videoPostLink ?? YoutubePlayerController(initialVideoId: ""),
                      showVideoProgressIndicator: true,
                      progressColors: const ProgressBarColors(
                        playedColor: Colors.amber,
                        handleColor: Colors.amberAccent,
                      ),
                      onReady: () {
                        //    _controller.addListener(listener);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        videoData[i].videoPostTitle,
                        style: const TextStyle(
                            fontSize: 18.0, color: Colors.black),
                      ),
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
                        onPressed: videoData[i].likeOnPressed,
                        icon: const Icon(Icons.thumb_up_alt_outlined),
                      ),
                      const Text(
                        '12',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: videoData[i].commentOnPressed,
                        icon: const Icon(
                          Icons.message_outlined,
                        ),
                      ),
                      const Text(
                        '11',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: videoData[i].shareOnPressed,
                        icon: const Icon(Icons.share_outlined),
                      ),
                      const Text(
                        '12',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
