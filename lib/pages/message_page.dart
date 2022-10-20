import 'package:flutter/material.dart';
import 'package:flutter_application_ui/modles/message_model.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return (Column(
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
                'Message',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  margin: const EdgeInsets.only(left: 60),
                  height: 70,
                  width: 55,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(179, 232, 230, 220),
                  ),
                  child: IconButton(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 12,
                      ),
                      color: Colors.green,
                      icon: const Icon(
                        Icons.message,
                        size: 36,
                      ),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: (() {
                        print('Create New Message Clicked');
                      })),
                ),
                Container(
                  margin: const EdgeInsets.all(9.0),
                  height: 70,
                  width: 55,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(179, 232, 230, 220),
                  ),
                  child: IconButton(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      color: Colors.black,
                      icon: const Icon(
                        Icons.settings,
                        size: 39,
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
            itemCount: messageData.length,
            itemBuilder: (context, i) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage(messageData[i].avatar),
                    //   backgroundImage: NetworkImage(messageData[i].avatar),
                  ),
                  title: Text(
                    messageData[i].name,
                    style: const TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(messageData[i].time),
                  trailing: IconButton(
                    iconSize: 20,
                    color: Colors.green,
                    onPressed: () => {},
                    icon: messageData[i].status,
                  ),
                  onTap: () => {print('Open Clicked Use Profile')},
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
