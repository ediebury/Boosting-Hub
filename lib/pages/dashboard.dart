import 'package:boosting_hub/pages/monthly_page.dart';
import 'package:boosting_hub/pages/weeks_page.dart';
import 'package:boosting_hub/pages/yearly_page.dart';
import 'package:boosting_hub/widget/likesview.dart';
import 'package:boosting_hub/widget/subscribers_views_videos.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 5,
                        spreadRadius: -2,
                        color: Colors.grey,
                        offset: Offset(0, 5))
                  ],
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
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 20),
                          child: CircleAvatar(
                            radius: 25,
                          ),
                        ),
                        Text(
                          "Channel Name",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        subViewVid(numText: "23", nameText: "Subscribers"),
                        subViewVid(numText: "145", nameText: "Views"),
                        subViewVid(numText: "7", nameText: "Videos")
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.015),
            const Text(
              "Recently Uploaded",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.015),
            Container(
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 5,
                        spreadRadius: -2,
                        color: Colors.grey,
                        offset: Offset(0, 5))
                  ],
                  color: const Color.fromARGB(255, 121, 126, 128),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            height: 60,
                            width: 50,
                            color: Colors.green,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Video Title",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Video Description",
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        likesView(
                            numText: "20",
                            icon: Icon(Icons.remove_red_eye_rounded)),
                        likesView(numText: "20", icon: Icon(Icons.back_hand)),
                        likesView(
                            numText: "20", icon: Icon(Icons.comment_rounded)),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.015),
            const Text(
              "Channel's Performance",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.015),
            Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 5,
                        spreadRadius: -2,
                        color: Colors.grey,
                        offset: Offset(0, 5))
                  ],
                  color: const Color.fromARGB(255, 121, 126, 128),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.black)),
                      child: TabBar(
                          labelStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height / 49.64),
                          unselectedLabelStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height / 49.64),
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.black,
                          indicatorWeight: 2,
                          indicatorColor: Colors.white,
                          controller: tabController,
                          indicator: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          tabs: [
                            Tab(
                                height:
                                    MediaQuery.of(context).size.height / 28.13,
                                text: "Week"),
                            Tab(
                              height:
                                  MediaQuery.of(context).size.height / 28.13,
                              text: "Monthly",
                            ),
                            Tab(
                              height:
                                  MediaQuery.of(context).size.height / 28.13,
                              text: "Year",
                            )
                          ]),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: TabBarView(
                          controller: tabController,
                          children: const [
                            WeeksPage(),
                            MonthlyPage(),
                            YearlyPage()
                          ]),
                    ))
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
