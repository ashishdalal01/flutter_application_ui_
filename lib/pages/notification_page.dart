import 'package:flutter/material.dart';
import 'package:flutter_application_ui/modles/notification_model.dart';

class NotifictionPage extends StatefulWidget {
  const NotifictionPage({super.key});

  @override
  State<NotifictionPage> createState() => _NotifictionPageState();
}

class _NotifictionPageState extends State<NotifictionPage> {
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
                'Notification',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
                          Icons.check_circle,
                          size: 36,
                        ),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: (() {
                          print('Create New Message Clicked');
                        })),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 2,
          color: Colors.grey,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: notificationData.length,
            itemBuilder: (context, i) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage(notificationData[i].avatar),
                  ),
                  title: Text(  
                    notificationData[i].name + ' ' + notificationData[i].description,
                     style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(notificationData[i].time),
                  trailing: IconButton(
                    iconSize: 20,
                    color: Colors.green,
                    onPressed: () => {},
                    icon: const Icon(Icons.more_vert_outlined),
                  ),
                  onTap: () => {print('use Tapped frome Message')},
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
