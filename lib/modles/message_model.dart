import 'package:flutter/material.dart';

class MessageModel {
  final String name;
  final String time;
  final String avatar;
  final Icon status;

  MessageModel({
    required this.name,
    required this.time,
    required this.avatar,
    required this.status,
  });

  static Icon statusOnline = const Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.green,
  );

  static Icon statusOffline = const Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.black,
  );
}

List<MessageModel> messageData = [
  MessageModel(
    name: 'Sweety',
    avatar:
        'image/hp13.jpeg',
    time: '10:50',
    status: MessageModel.statusOnline,
  ),
  MessageModel(
    name: 'aman',
    avatar:
        'image/hp12.jpeg',
    time: '3:40',
 status: MessageModel.statusOffline,
  ),
  MessageModel(
    name: 'Sweety',
    avatar:
     'image/hp3.jpeg',
    time: '2:08',
   status: MessageModel.statusOnline,
  ),
  MessageModel(
    name: 'Sweety',
    avatar:
       'image/hp12.jpeg',
    time: '5:50',
   status: MessageModel.statusOffline,
  ),
  MessageModel(
    name: 'kusu;;',
    avatar:
       'image/hp16.jpeg',
    time: '5.20',
   status: MessageModel.statusOnline,
  ),
  MessageModel(
    name: 'kusu;;',
    avatar:
         'image/hp12.jpeg',
    time: '5.20',
   status: MessageModel.statusOffline,
  ),
  MessageModel(
    name: 'kusu;;',
    avatar:
        'image/hp17.jpeg',
    time: '5.20',
     status: MessageModel.statusOnline,
  ),
  MessageModel(
    name: 'kusu;;',
    avatar:
        'image/hp20.jpeg',
    time: '5.20',
  status: MessageModel.statusOffline,
  ),
  MessageModel(
    name: 'kusu;;',
    avatar:
     'image/hp4.jpeg',
    time: '5.20',
      status: MessageModel.statusOnline,
  ),
  MessageModel(
    name: 'kusu;;',
    avatar:
        'image/hp18.jpeg',
    time: '5.20',
   status: MessageModel.statusOffline,
  ),
  MessageModel(
    name: 'kusu;;',
    avatar:
        'image/hp11.jpeg',
    time: '5.20',
  status: MessageModel.statusOffline,
  ),
  MessageModel(
    name: 'kusu;;',
    avatar:
        'image/hp19.jpeg',
    time: '5.20',
    status: MessageModel.statusOffline,
  ),
  MessageModel(
    name: 'kusu;;',
    avatar:
       'image/hp18.jpeg',
    time: '5.20',
  status: MessageModel.statusOnline,
  ),
];
