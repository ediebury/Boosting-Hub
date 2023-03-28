import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'If you have any questions or suggestions, please contact us using the information below:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Email:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 8.0),
            InkWell(
              child: const Text(
                'support@edithansah97@gmail.com',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16.0,
                  decoration: TextDecoration.underline,
                ),
              ),
              onTap: () async {
                final Uri _emailLaunchUri = Uri(
                  scheme: 'mailto',
                  path: 'support@yourapp.com',
                  query: 'subject=Feedback for your app',
                );
                if (await canLaunch(_emailLaunchUri.toString())) {
                  await launch(_emailLaunchUri.toString());
                } else {
                  throw 'Could not launch $_emailLaunchUri';
                }
              },
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Phone:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 8.0),
            InkWell(
              child: const Text(
                '+233 (541) 1547-707',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16.0,
                  decoration: TextDecoration.underline,
                ),
              ),
              onTap: () async {
                final Uri _phoneLaunchUri = Uri(
                  scheme: 'tel',
                  path: '+15551234567',
                );
                if (await canLaunch(_phoneLaunchUri.toString())) {
                  await launch(_phoneLaunchUri.toString());
                } else {
                  throw 'Could not launch $_phoneLaunchUri';
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
