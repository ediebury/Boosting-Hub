import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

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
