import 'package:flutter/cupertino.dart';

class StoryModel {
  final VoidCallback onTap;
  final String image;
  final String userName;

  StoryModel({
    required this.onTap,
    required this.image,
    required this.userName,
  });
}

List<StoryModel> storyData = [
  StoryModel(
    userName: 'priti',
    onTap: () => print('Priti story clicked'),
    image: 'image/ad6.jpeg',
  ),
  StoryModel(
    userName: 'sonmm',
    onTap: () => print('sonmm story clicked'),
    image: 'image/ad25.jpeg',
  ),
  StoryModel(
    userName: 'ritu',
    onTap: () => print('Priti story clicked'),
    image: 'image/hp19.jpeg',
  ),
  StoryModel(
    userName: 'reenaa',
    onTap: () => print('Priti story clicked'),
    image: 'image/hp25.jpeg',
  ),
  StoryModel(
    userName: 'seema',
    onTap: () => print(
      'Priti story clicked',
    ),
    image: 'image/hp19.jpeg',
  ),
  StoryModel(
    userName: 'sona',
    onTap: () => print('Priti story clicked'),
    image: 'image/hp15.jpeg',
  ),
];
