// ignore_for_file: library_private_types_in_public_api, sized_box_for_whitespace

import 'package:boosting_hub/screens/influencer_freelancer.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(
        seconds: 5,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Influencer()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          Container(
            height: double.infinity,
            child: Image.asset(
              'assets/images/onboard.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(58, 251, 0, 0),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Colors.black,
                    Color.fromARGB(73, 66, 62, 62),
                  ]),
            ),
          ),
          const Center(
            child: Text(
              'BOOSTING HUB',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
