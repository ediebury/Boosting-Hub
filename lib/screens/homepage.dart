import 'package:boosting_hub/pages/home.dart';
import 'package:boosting_hub/pages/dashboard.dart';
import 'package:boosting_hub/pages/drawer.dart';
import 'package:boosting_hub/pages/monitize.dart';
import 'package:boosting_hub/pages/profile.dart';
import 'package:boosting_hub/pages/promote.dart';
import 'package:boosting_hub/pages/settings.dart';
import 'package:flutter/material.dart';

import '../pages/analytics.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentSelectedIndex = 0;
  void screenSelected(int index) {
    setState(() {
      currentSelectedIndex = index;
    });
  }

  final List screens = [
    {"screen": const HomeView()},
    {"screen": const MonitizeView()},
    {"screen": const ProfileView()},
    {"screen": const SettingsView()},
  ];
  bool homeState = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 121, 126, 128),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: CircleAvatar(),
            )
          ],
          bottom: const TabBar(
              padding: EdgeInsets.all(5),
              indicatorColor: Colors.white,
              indicatorWeight: 1,
              labelStyle: TextStyle(fontSize: 17),
              unselectedLabelStyle: TextStyle(fontSize: 15),
              tabs: [
                Text("Analytics"),
                Text("Dashboard"),
                Text("Promote"),
              ]),
        ),
        drawer: const DrawerView(),
        body: homeState
            ? const Expanded(
                child: TabBarView(children: [
                  DashboardPage(),
                  AnalyticsPage(),
                  PromotePage(),
                ]),
              )
            : Expanded(child: screens[currentSelectedIndex]["screens"]),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color.fromARGB(255, 121, 126, 128),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey[800],
            currentIndex: currentSelectedIndex,
            onTap: screenSelected,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.attach_money), label: "Monitize"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
            ]),
      ),
    );
  }
}
