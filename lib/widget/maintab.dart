import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_ui/pages/home_page.dart';
import 'package:flutter_application_ui/pages/message_page.dart';
import 'package:flutter_application_ui/pages/notification_page.dart';
import 'package:flutter_application_ui/widget/home/mydrawer.dart';

import '../pages/friends_page.dart';
import '../pages/market_page.dart';
import '../pages/video_page.dart';
import 'package:badges/badges.dart';

class MainTab extends StatefulWidget {
  const MainTab({super.key});

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> with SingleTickerProviderStateMixin {
  TabController? _tebController;

  final List<Tab> topTabs = <Tab>[
    const Tab(
      icon: Icon(
        Icons.home_outlined,
        color: Colors.black,
        size: 33,
      ),
    ),
    const Tab(
      icon: Icon(Icons.people_outlined, color: Colors.black, size: 33),
    ),
    const Tab(
      icon: Icon(Icons.message_outlined, color: Colors.black, size: 30),
    ),
    Tab(
        icon: Badge(
      position: BadgePosition.topEnd(top: -20, end: -5),
      badgeContent: const Text('3'),
      child: const Icon(Icons.notifications_outlined,
          color: Colors.black, size: 30),
    )),
    const Tab(
      icon: Icon(Icons.video_library_outlined, color: Colors.black, size: 30),
    ),
    const Tab(
      icon: Icon(Icons.shopping_bag_outlined, color: Colors.black, size: 30),
    ),
  ];

  @override
  @override
  void initState() {
    _tebController =
        TabController(length: topTabs.length, initialIndex: 0, vsync: this)
          ..addListener(() {
            setState(() {});
          });

    super.initState();
  }

  Future<bool> _onWillPop() async {
    print('on will pop');
    if (_tebController?.index == 0) {
      await SystemNavigator.pop();
    }
    Future.delayed(
      const Duration(milliseconds: 200),
      (() {
        print('set index');
        _tebController?.index = 0;
      }),
    );
    print('Return');
    return _tebController?.index == 0;
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  

  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Facebook',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 29,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(179, 232, 230, 220),
              ),
              child: IconButton(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                color: Colors.blue,
                icon: const Icon(
                  Icons.search,
                  size: 30,
                ),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,

                onPressed: (() {
                  print('hello');
                }),
                // icon: const Text('Search Button Clicked'),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(141, 221, 220, 176)),
              child: IconButton(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                color: Colors.blue,
                icon: const Icon(
                  Icons.menu,
                  size: 30,
                ),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,

                onPressed: (() {
                  _scaffoldKey.currentState!.openEndDrawer();
                }),
                // icon: const Text('Search Button Clicked'),
              ),
            ),
          ],
          bottom: TabBar(
            controller: _tebController,
            indicatorColor: Colors.black,
            tabs: topTabs,
          ),
        ),
        endDrawer: const SizedBox(
          width: 500,
          child: MyDrawer(),
        ),
        body: TabBarView(
          controller: _tebController,
          children: const [
            HomePage(),
            FriendsPage(),
            MessagePage(),
            NotifictionPage(),
            VideoPage(),
            MarketPage(),
          ],
        ),
      ),
    );
  }
}
