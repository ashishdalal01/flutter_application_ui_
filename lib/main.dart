import 'package:flutter/material.dart';
import 'package:flutter_application_ui/widget/maintab.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Ashish',
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Facebook",
      home: MainTab(),
    );
  }
}
