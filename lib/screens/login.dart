import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: double.infinity,
          child: Image.asset(
            'assets/images/signup_image.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              'BOOSTING HUB',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Username',
                prefixIcon: Icon(
                  Icons.person,
                ),
                helperStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    width: 10,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.key),
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                helperStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    width: 10,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
