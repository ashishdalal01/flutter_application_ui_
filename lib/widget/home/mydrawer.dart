import 'package:flutter/material.dart';
import 'package:flutter_application_ui/pages/friends_page.dart';
import 'package:flutter_application_ui/pages/message_page.dart';
import 'package:flutter_application_ui/pages/notification_page.dart';
import 'package:flutter_application_ui/pages/profile_page.dart';
import 'package:flutter_application_ui/pages/video_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 150,
            child: DrawerHeader(
              decoration: const BoxDecoration(color: Colors.white),
              padding: const EdgeInsets.fromLTRB(1, 1, 13, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    alignment: Alignment.center,
                    color: Colors.red,
                    onPressed: () => {Navigator.of(context).pop()},
                    icon: const Icon(
                      Icons.arrow_right,
                      size: 60,
                    ),
                  ),
                  const Text(
                    'Manu',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.00,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black12,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.search_outlined,
                      ),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {
                        print('search Clicked');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 13),
              children: [
                ListTile(
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('image/ad20.jpeg'),
                    ),
                    title: const Text(
                      'Sonam',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text('View your Profile'),
                    onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfilePage(),
                            ),
                          ),
                        }),
                const Divider(
                  thickness: 3,
                  color: Colors.black12,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.notification_add_outlined,
                      size: 33,
                      color: Colors.red,
                    ),
                    title: const Text(
                      'Notification',
                    ),
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => Material(
                                child: Container(
                                  margin: const EdgeInsets.only(top: 30),
                                  child: const NotifictionPage(),
                                ),
                              )),
                        ),
                      ),
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.message_outlined,
                      size: 32,
                      color: Colors.green,
                    ),
                    title: const Text(
                      'Message',
                    ),
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => Material(
                                child: Container(
                                  margin: const EdgeInsets.only(top: 30),
                                  child: const MessagePage(),
                                ),
                              )),
                        ),
                      ),
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.group_add_outlined,
                      size: 32,
                      color: Colors.blue,
                    ),
                    title: const Text(
                      'Frinds',
                    ),
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => Material(
                                child: Container(
                                  margin: const EdgeInsets.only(top: 30),
                                  child: const FriendsPage(),
                                ),
                              )),
                        ),
                      ),
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.shopping_bag_outlined,
                      size: 32,
                      color: Colors.purple,
                    ),
                    title: const Text(
                      'MarketPlace',
                    ),
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => Material(
                                child: Container(
                                  margin: const EdgeInsets.only(top: 30),
                                  child: const NotifictionPage(),
                                ),
                              )),
                        ),
                      ),
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.video_call_outlined,
                      size: 32,
                      color: Colors.deepPurple,
                    ),
                    title: const Text(
                      'Videos',
                    ),
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => Material(
                                child: Container(
                                  margin: const EdgeInsets.only(top: 30),
                                  child: const VideoPage(),
                                ),
                              )),
                        ),
                      ),
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.coronavirus,
                      size: 32,
                      color: Colors.red,
                    ),
                    title: Text(
                      'Covid 19 Information Center',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
