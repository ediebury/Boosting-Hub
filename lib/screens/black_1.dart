// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Dark_Screen_1 extends StatefulWidget {
  const Dark_Screen_1({super.key});

  @override
  State<Dark_Screen_1> createState() => _Dark_Screen_1State();
}

class _Dark_Screen_1State extends State<Dark_Screen_1> {
  bool showvalue = false;
  bool showvalue1 = false;
  bool showvalue2 = false;

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
            left: 8.0,
            right: 8.0,
            top: 100,
            bottom: 8.0,
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "How Far",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Are You With",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Your Youtube Channel?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 60,
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
                                  'Now starting\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '<1,000 subscribers',
                                  style: TextStyle(color: Colors.white),
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
                  height: 40,
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
                                  'Growing Audience\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '<1,000 - 10,000 subscribers',
                                  style: TextStyle(color: Colors.white),
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
                  height: 40,
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
                                  'Established YouTuber\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'above 10,000 subscribers',
                                  style: TextStyle(color: Colors.white),
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
              ]),
        ),
      ]),
    );
  }
}
