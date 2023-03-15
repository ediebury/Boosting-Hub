// ignore_for_file: camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';

class DarkScreen_3 extends StatefulWidget {
  const DarkScreen_3({super.key});

  @override
  State<DarkScreen_3> createState() => _DarkScreen_3State();
}

bool showvalue = false;
bool showvalue1 = false;
bool showvalue2 = false;
bool showvalue3 = false;
bool showvalue4 = false;

class _DarkScreen_3State extends State<DarkScreen_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 60,
            bottom: 0,
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 140,
                  width: 200,
                  child: const Text(
                    "Your struggles \nAs a channel so That we help you,\nYou achieve your\nGoals.",
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: const Color.fromARGB(221, 19, 19, 19),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 25,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Gain more Subscribers',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Checkbox(
                            value: showvalue,
                            onChanged: (newValue) {
                              setState(() {
                                showvalue = !showvalue;
                              });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            activeColor: Colors.black,
                            fillColor: MaterialStateProperty.all(Colors.white),
                            checkColor: Colors.black,
                            side:
                                const BorderSide(width: 2, color: Colors.white),
                          ),
                        ]),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: const Color.fromARGB(221, 19, 19, 19),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 25,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  width: 200,
                                  child: const Text(
                                    'Optimise Channel for \nYoutube to \nshow videos more',
                                    softWrap: true,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Checkbox(
                            value: showvalue1,
                            onChanged: (newValue) {
                              setState(() {
                                showvalue1 = !showvalue1;
                              });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            activeColor: Colors.black,
                            fillColor: MaterialStateProperty.all(Colors.white),
                            checkColor: Colors.black,
                            side:
                                const BorderSide(width: 2, color: Colors.white),
                          ),
                        ]),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: const Color.fromARGB(221, 19, 19, 19),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 25,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Increase channel views',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Checkbox(
                            value: showvalue2,
                            onChanged: (newValue) {
                              setState(() {
                                showvalue2 = !showvalue2;
                              });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            activeColor: Colors.black,
                            fillColor: MaterialStateProperty.all(Colors.white),
                            checkColor: Colors.black,
                            side:
                                const BorderSide(width: 2, color: Colors.white),
                          ),
                        ]),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: const Color.fromARGB(221, 19, 19, 19),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 25,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 40,
                                  width: 160,
                                  child: const Text(
                                    "Increase channel's Engagement",
                                    softWrap: true,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Checkbox(
                            value: showvalue3,
                            onChanged: (newValue) {
                              setState(() {
                                showvalue3 = !showvalue3;
                              });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            activeColor: Colors.black,
                            fillColor: MaterialStateProperty.all(Colors.white),
                            checkColor: Colors.black,
                            side:
                                const BorderSide(width: 2, color: Colors.white),
                          ),
                        ]),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        25,
                      ),
                      bottomRight: Radius.circular(
                        25,
                      ),
                    ),
                    color: Color.fromARGB(221, 19, 19, 19),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 25,
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 50,
                                  width: 220,
                                  child: const Text(
                                    'More Views, Subscribers, Page Engagement, And Optimization',
                                    softWrap: true,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Checkbox(
                                  value: showvalue4,
                                  onChanged: (newValue) {
                                    setState(() {
                                      showvalue4 = !showvalue4;
                                    });
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  activeColor: Colors.black,
                                  fillColor:
                                      MaterialStateProperty.all(Colors.white),
                                  checkColor: Colors.black,
                                  side: const BorderSide(
                                      width: 2, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
              ]),
        ),
      ]),
    );
  }
}
