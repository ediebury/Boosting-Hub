import 'package:flutter/material.dart';
import 'package:boosting_hub/pages/drawer.dart';
import 'package:boosting_hub/pages/dashboard.dart';
import 'package:boosting_hub/pages/promote.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  int currentSelectedIndex = 0;
  void screenSelected(int index) {
    setState(() {
      currentSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 121, 126, 128),
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
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
          body: Column(children: const [
            Expanded(
              child: TabBarView(children: [AnalyticsPage()]),
            ),
          ]),
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
        ));
  }
}
