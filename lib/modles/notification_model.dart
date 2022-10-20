import 'package:flutter/material.dart';

class NotificationModel {
  final String name;
  final String avatar;
  final String time;
  final String description;

  NotificationModel({
    required this.name,
    required this.avatar,
    required this.time,
    required this.description,
  });
}

List<NotificationModel> notificationData = [
  NotificationModel(
      name: 'sweety',
      avatar:
          'image/ad7.jpeg',
      time: '28 min ago',
      description: 'like'),
  NotificationModel(
      name: 'Aman',
      avatar:
          'image/ad2.jpeg',
      time: '2 min ago',
      description: 'comment'),
  NotificationModel(
      name: 'pardeep',
      avatar:
           'image/ad4.jpeg',
      time: '3h ago',
      description: 'like'),
  NotificationModel(
      name: 'sweety',
      avatar:
          'image/ad6.jpeg',
      time: '4h ago',
      description: 'comment'),
  NotificationModel(
      name: 'sweety',
      avatar:
           'image/ad9.jpeg',
      time: '3 min ago',
      description: 'like'),
  NotificationModel(
      name: 'sandeep))',
      avatar:
    'image/ad14.jpeg',
      time: '3h ago',
      description: 'comment'),
  NotificationModel(
      name: 'lalu00',
      avatar:
          'image/ad10.jpeg',
      time: '1h ago',
      description: 'like'),
  NotificationModel(
      name: 'rina',
      avatar:
          'image/ad11.jpeg',
      time: '3h ago',
      description: 'comment'),
  NotificationModel(
      name: 'sweety',
      avatar:
          'image/ad1.jpeg',
      time: '3 min ago',
      description: 'like'),
  NotificationModel(
      name: 'sweety',
      avatar:
           'image/ad2.jpeg',
      time: '8h ago',
      description: 'like'),
  NotificationModel(
      name: 'annu',
      avatar:
          'image/ad3.jpeg',
      time: '3h ago',
      description: 'like'),
];
