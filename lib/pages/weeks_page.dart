import 'package:flutter/material.dart';

class WeeksPage extends StatefulWidget {
  const WeeksPage({super.key});

  @override
  State<WeeksPage> createState() => _WeeksPageState();
}

class _WeeksPageState extends State<WeeksPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Subscribers",
                style: TextStyle(fontSize: 17),
              ),
              Row(
                children: [
                  Text(
                    "12",
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(
                    "0",
                    style: TextStyle(fontSize: 17),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "New",
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(
                    "Lost",
                    style: TextStyle(fontSize: 17),
                  )
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Views",
                style: TextStyle(fontSize: 17),
              ),
              Text(
                "12",
                style: TextStyle(fontSize: 17),
              ),
              Text(
                "New",
                style: TextStyle(fontSize: 17),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Charts",
                style: TextStyle(fontSize: 17),
              ),
              Icon(Icons.bar_chart_rounded)
            ],
          )
        ],
      ),
    );
  }
}
