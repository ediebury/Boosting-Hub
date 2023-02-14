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
      builder: ((context) => const MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}
