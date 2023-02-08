import 'package:boosting_hub/screens/black_1.dart';
import 'package:boosting_hub/screens/black_2.dart';
import 'package:boosting_hub/screens/black_3.dart';
import 'package:boosting_hub/screens/influencer_freelancer.dart';
import 'package:boosting_hub/screens/login.dart';
import 'package:boosting_hub/screens/login_signup.dart';
import 'package:boosting_hub/signup.dart';
import 'package:boosting_hub/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: ((context) => MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DarkScreen_3(),
    );
  }
}
