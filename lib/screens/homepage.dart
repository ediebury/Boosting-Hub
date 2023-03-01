import 'package:boosting_hub/pages/dashboard.dart';
import 'package:boosting_hub/pages/drawer.dart';
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
    {"screen": const DashboardPage()},
    {"screen": const AnalyticsPage()},
    {"screen": const PromotePage()},
    {"screen": const SettingsView()},
  ];
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
        ),
        drawer: const DrawerView(),
        body: screens[currentSelectedIndex]["screen"],
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
                  icon: Icon(Icons.analytics), label: "Analytics"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.auto_graph_rounded), label: "Promote"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
            ]),
      ),
    );
  }
}
