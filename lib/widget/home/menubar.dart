import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () => {print('Add post clicked')},
          child: Row(
            children: const [
              Icon(
                Icons.post_add_outlined,
                size: 27,
              ),
              Text(
                'Text',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
          child: VerticalDivider(color: Colors.black),
        ),
        TextButton(
          onPressed: () => {print(' video live post clicked')},
          child: Row(
            children: const [
              Icon(
                Icons.video_call,
                size: 28,
              ),
              Text(
                'Live Video',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
          child: VerticalDivider(color: Colors.black),
        ),
        TextButton(
          onPressed: () => {print('Add post clicked')},
          child: Row(
            children: const [
              Icon(
                Icons.location_on,
                size: 28,
              ),
              Text(
                'Loction',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
