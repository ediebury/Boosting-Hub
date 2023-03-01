import 'package:flutter/material.dart';

class DrawerView extends StatefulWidget {
  const DrawerView({super.key});

  @override
  State<DrawerView> createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[400],
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.grey[800]),
              child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.grey[800]),
                  currentAccountPictureSize: const Size.fromRadius(25),
                  currentAccountPicture: const CircleAvatar(),
                  accountName: const Text("Profile Name"),
                  accountEmail: const Text("Email"))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                TextButton(
                    child: const Text("Account",
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    onPressed: () {}),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                TextButton(
                    child: const Text("Blog",
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    onPressed: () {}),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                TextButton(
                    child: const Text("SEO",
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    onPressed: () {}),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                TextButton(
                    child: const Text("Become an Afilliate",
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    onPressed: () {}),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                TextButton(
                    child: const Text("Join our Social Media Platform",
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    onPressed: () {}),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                TextButton(
                    child: const Text("Learn from Competitors",
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    onPressed: () {}),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                TextButton(
                    child: const Text("Earn",
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    onPressed: () {}),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                TextButton(
                    child: const Text("Analytics",
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    onPressed: () {}),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                TextButton(
                    child: const Text("Settings",
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    onPressed: () {}),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey[800])),
                        onPressed: () {},
                        child: const Text("Log Out")))
              ],
            ),
          )
        ],
      ),
    );
  }
}
