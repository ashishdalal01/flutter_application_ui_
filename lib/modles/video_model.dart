import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoModel {
  final VoidCallback avatarOnPressed;
  final String avatarImage;
  final String name;
  final String time;
  final VoidCallback moreOnPressed;
  final String videoPostTitle;
  final YoutubePlayerController? videoPostLink;
  final VoidCallback likeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback shareOnPressed;

  VideoModel({
    required this.avatarOnPressed,
    required this.avatarImage,
    required this.name,
    required this.time,
    required this.moreOnPressed,
    required this.videoPostTitle,
    required this.videoPostLink,
    required this.likeOnPressed,
    required this.commentOnPressed,
    required this.shareOnPressed,
  });
}

List<VideoModel> videoData = [
  VideoModel(
    avatarOnPressed: () => print('avatar Clicked'),
    avatarImage: 'image/ad16.jpeg',
    name: 'powen',
    time: 'just Now',
    moreOnPressed: () => print('more clicked'),
    videoPostTitle: 'This is my new video the video very short but video nice ',
    videoPostLink: YoutubePlayerController(
      initialVideoId: 'cZSrWoBMSrg',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    ),
    likeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
  ),
  VideoModel(
    avatarOnPressed: () => print('avatar Clicked'),
    avatarImage: 'image/ad22.jpeg',
    name: 'Arvind****',
    time: '15 min ago',
    moreOnPressed: () => print('more clicked'),
    videoPostTitle:
        'This is my new video This video very good this video make by arvind and Amit',
    videoPostLink: YoutubePlayerController(
      initialVideoId: 'JP3pjfOgMKY',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    ),
    likeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
  ),
  VideoModel(
    avatarOnPressed: () => print('avatar Clicked'),
    avatarImage: 'image/ad20.jpeg',
    name: 'pardeep%%%%%',
    time: '3h ago',
    moreOnPressed: () => print('more clicked'),
    videoPostTitle: 'This is my new video the video good video',
    videoPostLink: YoutubePlayerController(
      initialVideoId: 'MmiKEbGr0bg',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    ),
    likeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
  ),
];
