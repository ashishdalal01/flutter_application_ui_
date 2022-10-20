// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_ui/modles/friends_modle.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20.00,
            vertical: 5.00,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Friends',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(children: [
                Container(
                  width: 55,
                  height: 75,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(179, 232, 230, 220),
                  ),
                  child: IconButton(
                      padding: const EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 8,
                      ),
                      color: Colors.green,
                      icon: const Icon(
                        Icons.person,
                        size: 30,
                      ),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: (() {
                        print('person Clicked');
                      })),
                ),
                Container(
                  width: 55,
                  height: 75,
                  margin: const EdgeInsets.only(left: 10),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(179, 232, 230, 220),
                  ),
                  child: IconButton(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      color: Colors.purple,
                      icon: const Icon(
                        Icons.people_alt,
                        size: 30,
                      ),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: (() {
                        print('people Clicked');
                      })),
                ),
              ]),
            ],
          ),
        ),
        const Divider(
          thickness: 2,
          color: Colors.grey,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: friendsData.length,
            itemBuilder: (context, i) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage(friendsData[i].avatar),
                    // backgroundImage: NetworkImage(friendsData[i].avatar),
                  ),
                  title: Text(
                    friendsData[i].name,
                    style: const TextStyle(fontSize: 20),
                  ),
                  trailing: Wrap(
                    spacing: 12,
                    children: [
                      TextButton(
                        onPressed: () => {print('friend data request send')},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 7,
                            vertical: 6,
                          ),
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: const Text('Add friends'),
                      ),
                      TextButton(
                        onPressed: () => {print('friend Remove')},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.grey,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 8,
                          ),
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: const Text('remove'),
                      ),
                    ],
                  ),
                  onTap: () {
                    print('Open Clicked Use Profile');
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
