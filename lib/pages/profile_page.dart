import 'package:flutter/material.dart';
import 'package:learnflutter/core/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/yeah.png'),
            radius: 60,
          ),
          SizedBox(height: kDouble20),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Flutter'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Flutter@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text('Flutter Website'),
          ),
        ],
      ),
    );
  }
}
