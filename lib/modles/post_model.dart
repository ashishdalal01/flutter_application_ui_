import 'package:flutter/material.dart';

class PostModel {
  final VoidCallback avatarOnPressed;
  final String avatarImage;
  final String name;
  final String time;
  final VoidCallback moreOnPressed;
  final String postTitle;
  final String postImage;
  final VoidCallback likeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback shareOnPressed;

  PostModel({
    required this.avatarOnPressed,
    required this.avatarImage,
    required this.name,
    required this.time,
    required this.moreOnPressed,
    required this.postTitle,
    required this.postImage,
    required this.likeOnPressed,
    required this.commentOnPressed,
    required this.shareOnPressed,
  });
}

List<PostModel> postData = [
  PostModel(
    avatarOnPressed: () => print('avatar Clicked'),
    avatarImage:
               'image/hp14.jpeg',
    name: 'priti',
    time: 'just Now',
    moreOnPressed: () => print('more clicked'),
    postTitle: 'This is my new profile picture',
    postImage:
          'image/hp18.jpeg',
    likeOnPressed: () => print('Like Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
  ),
  PostModel(
    avatarOnPressed: () => print('avatar Clicked'),
    avatarImage:
               'image/ad24.jpeg',
    name: 'suneta',
    time: '8 mint ago',
    moreOnPressed: () => print('more Clicked'),
    postTitle: 'this is my nwe profile picture',
    postImage:
              'image/hp21.jpeg',
    likeOnPressed: () => print('Lick Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
  ),
  PostModel(
    avatarOnPressed: () => print('avatar Clicked'),
    avatarImage:
              'image/hp4.jpeg',
    name: 'sweety',
    time: 'just Now',
    moreOnPressed: () => print('more Clicked'),
    postTitle: 'this is my nwe profile picture',
    postImage:
             'image/hp6.jpeg',
    likeOnPressed: () => print('Lick Clicked'),
    commentOnPressed: () => print('Comment Clicked'),
    shareOnPressed: () => print('Share Clicked'),
  ),
];
