import 'package:boosting_hub/widget/subscribers_views_videos.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 121, 126, 128),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 25,
                        ),
                        Text(
                          "Channel Name",
                          style: TextStyle(fontSize: 22),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [subViewVid(), subViewVid(), subViewVid()],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
