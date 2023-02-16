import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:boosting_hub/pages/drawer.dart';
import 'package:boosting_hub/pages/dashboard.dart';
import 'package:boosting_hub/pages/promote.dart';
import 'package:fl_chart/fl_chart.dart';

class ChartData {
  final double x;
  final double y;

  ChartData(this.x, this.y);
}

final data = [
  ChartData(0, 5),
  ChartData(1, 10),
  ChartData(2, 15),
  ChartData(3, 20),
  ChartData(4, 10),
];

final chart = LineChart(
  LineChartData(
    titlesData: FlTitlesData(
      topTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          interval: 10,
        ),
      ),
      rightTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          interval: 10,
        ),
      ),
    ),

    // Define the line data.
    lineBarsData: [
      LineChartBarData(
        isCurved: true,
        barWidth: 2,
        dotData: FlDotData(show: false),
      ),
    ],
  ),
);
=======
>>>>>>> 462f849f2864b7f81e601452d0cbb73c30f87f6c

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
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
          body: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Channel's Statistics",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 300,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                            width: 350.0,
                            height: 200.0,
                            color: Colors.transparent,
                            child: chart),
                        Container(
                          width: 200.0,
                          height: 200.0,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 200.0,
                          height: 200.0,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
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
=======
    return Scaffold();
>>>>>>> 462f849f2864b7f81e601452d0cbb73c30f87f6c
  }
}
