import 'package:facebook/pages/friends.dart';
import 'package:facebook/pages/marketplace.dart';
import 'package:facebook/pages/menu.dart';
import 'package:facebook/pages/newsfeed.dart';
import 'package:facebook/pages/notifications.dart';
import 'package:facebook/pages/reels.dart';
import 'package:flutter/material.dart';

class MainCustomPage extends StatefulWidget {
  const MainCustomPage({super.key});

  @override
  State<MainCustomPage> createState() => _MainCustomPageState();
}

class _MainCustomPageState extends State<MainCustomPage> {
  int selectedIndex = 0;

  final List<Widget> pages = const <Widget>[
    Newsfeed(),
    FriendsPage(),
    ReelsPage(),
    MarketplacePage(),
    NotificationsPage(),
    MenuPage(),
    Center(child: Text('Profile')),
  ];
  //handle index
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Friends'),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video), label: 'Reels'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Marketplace'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/profile/prof4.jpg'),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
