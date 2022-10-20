import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              IconButton(
                padding: const EdgeInsets.fromLTRB(0, 1, 50, 37),
                alignment: Alignment.center,
                color: Colors.red,
                onPressed: () => {Navigator.of(context).pop()},
                icon: const Icon(
                  Icons.arrow_right,
                  size: 60,
                ),
              ),
              const Text('Sonam'),
            ],
          ),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 200,
              width: 400,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: () => {print('profile change')},
                    child: Column(
                      children: [
                        Container(
                          height: 190,
                          width: 400,
                          margin: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: const ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Image(
                              image: AssetImage('image/ad13.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    bottom: 1,
                    left: 150,
                    child: SizedBox(
                      height: 120,
                      width: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(90),
                        ),
                        child: Image(
                          image: AssetImage('image/ad6.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 90,
              alignment: Alignment.center,
              child: const Text(
                'sweety',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () => {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.add_circle,
                          color: Colors.black,
                        ),
                        Text('Add to story'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.edit, color: Colors.black),
                        Text('edit profile'),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.more_horiz),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
