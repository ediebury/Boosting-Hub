import 'package:flutter/material.dart';
import 'package:boosting_hub/pages/drawer.dart';

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
    lineBarsData: [
      LineChartBarData(
        spots: data.map((d) => FlSpot(d.x, d.y)).toList(),
        isCurved: true,
        barWidth: 3,
        dotData: FlDotData(show: false),
      ),
    ],
  ),
);

class ChartData1 {
  final double x;
  final double y;

  ChartData1(this.x, this.y);
}

final data1 = [
  ChartData(0, 5),
  ChartData(1, 10),
  ChartData(2, 15),
  ChartData(3, 20),
  ChartData(4, 10),
];

final chart1 = LineChart(
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
    lineBarsData: [
      LineChartBarData(
        spots: data.map((d) => FlSpot(d.x, d.y)).toList(),
        isCurved: true,
        barWidth: 3,
        dotData: FlDotData(show: false),
      ),
    ],
  ),
);

class ChartData2 {
  final double x;
  final double y;

  ChartData2(this.x, this.y);
}

final data2 = [
  ChartData(0, 5),
  ChartData(1, 10),
  ChartData(2, 15),
  ChartData(3, 20),
  ChartData(4, 10),
];

final chart2 = LineChart(
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
    lineBarsData: [
      LineChartBarData(
        spots: data.map((d) => FlSpot(d.x, d.y)).toList(),
        isCurved: true,
        barWidth: 3,
        dotData: FlDotData(show: false),
      ),
    ],
  ),
);

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
    return Scaffold(
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
                      child: chart,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 200.0,
                      height: 200.0,
                      color: Colors.transparent,
                      child: chart1,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 200.0,
                      height: 200.0,
                      color: Colors.transparent,
                      child: chart2,
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
