import 'package:boosting_hub/screens/login.dart';
import 'package:boosting_hub/signup.dart';
import 'package:flutter/material.dart';

class SignUpAndLogin extends StatefulWidget {
  const SignUpAndLogin({super.key});

  @override
  State<SignUpAndLogin> createState() => _SignUpAndLoginState();
}

class _SignUpAndLoginState extends State<SignUpAndLogin> {
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
              height: 25,
            ),
            Container(
              height: 70,
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Signup()),
                  );
                },
                child: const Text(
                  'SIGNUP',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 70,
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(0, 255, 255, 255)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ]),
        )
      ]),
    );
  }
}
