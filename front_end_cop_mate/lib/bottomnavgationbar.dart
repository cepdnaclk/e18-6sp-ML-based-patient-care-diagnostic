import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:front_end_cop_mate/screens/home.dart';
import 'package:front_end_cop_mate/screens/home.dart';
import 'package:front_end_cop_mate/screens/day_summary_map.dart';
import 'package:front_end_cop_mate/screens/settings.dart';
import 'package:front_end_cop_mate/screens/vehicle_analyze.dart';
import 'package:front_end_cop_mate/screens/settings.dart';
import 'package:front_end_cop_mate/screens/search_vehicles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:front_end_cop_mate/screens/search_vehicles.dart';
import 'package:front_end_cop_mate/screens/quick_checkup.dart';
import 'package:front_end_cop_mate/screens/chatgpt.dart';
import 'package:front_end_cop_mate/models/User_2.dart';

class bottomnavigationbar extends StatefulWidget {
  static const String id = 'bottom_navigation_bar';

  final User_2 user_2;

  const bottomnavigationbar({
    required this.user_2,
  });

  @override
  State<bottomnavigationbar> createState() => _bottomnavigationbarState();
}

class _bottomnavigationbarState extends State<bottomnavigationbar> {
  int currentIndex = 0;
  final screens = [
    day_summary_graph(),
    //search_vehciles(),
    quick_checkup(),
    chatgpt(),
    settings()
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  final FirebaseAuth auth = FirebaseAuth.instance;

  void getCurrentUser() async {
    User? user = await auth.currentUser;
    print("Logged in!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Virtual Aid'),
        backgroundColor: Color(0xFFAC6EBB),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF8008CA),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        iconSize: 30,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flash_on),
            label: 'Quick Checkup',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
