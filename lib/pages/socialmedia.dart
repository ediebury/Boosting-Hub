// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaPage extends StatelessWidget {
  const SocialMediaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Join Our Social Media Platforms'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Stay up to date with our latest news and updates by following us on our social media platforms:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 16.0),
            InkWell(
              child: Row(
                children: const [
                  Icon(Icons.facebook),
                  SizedBox(width: 16.0),
                  Text(
                    'Facebook',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
              onTap: () async {
                final Uri _facebookLaunchUri =
                    Uri.parse('https://www.facebook.com/yourapp');
                if (await canLaunch(_facebookLaunchUri.toString())) {
                  await launch(_facebookLaunchUri.toString());
                } else {
                  throw 'Could not launch $_facebookLaunchUri';
                }
              },
            ),
            const SizedBox(height: 16.0),
            InkWell(
              child: Row(
                children: const [
                  Icon(FontAwesomeIcons.twitter),
                  SizedBox(width: 16.0),
                  Text(
                    'Twitter',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
              onTap: () async {
                final Uri _twitterLaunchUri =
                    Uri.parse('https://twitter.com/yourapp');
                if (await canLaunch(_twitterLaunchUri.toString())) {
                  await launch(_twitterLaunchUri.toString());
                } else {
                  throw 'Could not launch $_twitterLaunchUri';
                }
              },
            ),
            const SizedBox(height: 16.0),
            InkWell(
              child: Row(
                children: const [
                  Icon(FontAwesomeIcons.instagram),
                  SizedBox(width: 16.0),
                  Text(
                    'Instagram',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
              onTap: () async {
                final Uri _instagramLaunchUri =
                    Uri.parse('https://www.instagram.com/yourapp');
                if (await canLaunch(_instagramLaunchUri.toString())) {
                  await launch(_instagramLaunchUri.toString());
                } else {
                  throw 'Could not launch $_instagramLaunchUri';
                }
              },
            ),
            const SizedBox(height: 16.0),
            InkWell(
              child: Row(
                children: const [
                  Icon(FontAwesomeIcons.telegram),
                  SizedBox(width: 16.0),
                  Text(
                    'Telegram',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
              onTap: () async {
                final Uri _instagramLaunchUri =
                    Uri.parse('https://www.telegram.com/yourapp');
                if (await canLaunch(_instagramLaunchUri.toString())) {
                  await launch(_instagramLaunchUri.toString());
                } else {
                  throw 'Could not launch $_instagramLaunchUri';
                }
              },
            ),
            const SizedBox(height: 16.0),
            InkWell(
              child: Row(
                children: const [
                  Icon(FontAwesomeIcons.whatsapp),
                  SizedBox(width: 16.0),
                  Text(
                    'WhatsApp',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
              onTap: () async {
                final Uri _instagramLaunchUri =
                    Uri.parse('https://www.whatsapp.com/yourapp');
                if (await canLaunch(_instagramLaunchUri.toString())) {
                  await launch(_instagramLaunchUri.toString());
                } else {
                  throw 'Could not launch $_instagramLaunchUri';
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
