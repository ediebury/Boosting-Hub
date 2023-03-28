// ignore_for_file: camel_case_types

import 'dart:async';

import 'package:boosting_hub/screens/black_3.dart';
import 'package:flutter/material.dart';

class Dark_2 extends StatefulWidget {
  const Dark_2({super.key});

  @override
  State<Dark_2> createState() => _Dark_2State();
}

class _Dark_2State extends State<Dark_2> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(
        seconds: 5,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const DarkScreen_3()),
      ),
    );
  }
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
          padding: const EdgeInsets.all(35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Great,',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'We help you',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Get monetised,',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'As you relax,',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
      ]),
    );;
  }
}