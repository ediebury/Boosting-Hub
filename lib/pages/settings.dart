// ignore_for_file: sized_box_for_whitespace

import 'package:boosting_hub/pages/accountspage.dart';
import 'package:boosting_hub/pages/contact_us.dart';
import 'package:boosting_hub/pages/socialmedia.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isDarkModeEnabled = false;
  bool _isNotificationsEnabled = true;
  bool _isProFeaturesEnabled = false;
  bool _isMembershipEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: const Color.fromARGB(255, 121, 126, 128),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Dark mode'),
            subtitle: const Text('Enable dark mode for the app'),
            value: _isDarkModeEnabled,
            onChanged: (bool value) {
              setState(() {
                _isDarkModeEnabled = value;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          SwitchListTile(
            title: const Text('Notifications'),
            subtitle: const Text('Enable notifications for the app'),
            value: _isNotificationsEnabled,
            onChanged: (bool value) {
              setState(() {
                _isNotificationsEnabled = value;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          SwitchListTile(
            title: const Text('Pro features'),
            subtitle: const Text(
                'Unlock additional features with a pro subscription'),
            value: _isProFeaturesEnabled,
            onChanged: (bool value) {
              setState(() {
                _isProFeaturesEnabled = value;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          SwitchListTile(
            title: const Text('Membership'),
            subtitle:
                const Text('Join our membership program for exclusive perks'),
            value: _isMembershipEnabled,
            onChanged: (bool value) {
              setState(() {
                _isMembershipEnabled = value;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: const Text('Account'),
            subtitle: const Text('Manage your account settings'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AccountPage()),
                  );
              // Navigate to account settings page
            },
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: const Text('Help'),
            subtitle: const Text('Get help with using the app'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // Navigate to help page
            },
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: const Text('Contact us'),
            subtitle: const Text('Get in touch with our support team'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ContactUsPage()),
                  );
              // Navigate to contact page
            },
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: const Text('Join our social media platforms'),
            subtitle:
                const Text('Stay updated on our latest news and announcements'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SocialMediaPage()),
                  );
              // Navigate to social media page
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 75,
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 85, 86, 87),
                  ),
                ),
                child: const Text(
                  'Change channel',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                onPressed: () {
                  // Implement change channel functionality
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
