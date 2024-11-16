import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Urlluncher extends StatefulWidget {
  const Urlluncher({super.key});

  @override
  State<Urlluncher> createState() => _UrlluncherState();
}

class _UrlluncherState extends State<Urlluncher> {
  final Uri _url = Uri.parse('https://www.google.com'); // Define your URL here

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              _launchUrl();
            },
            child: Container(
              color: Colors.redAccent,
              padding: EdgeInsets.all(20),
              child: Text("click here for launch"),
            ),
          )
        ],
      ),
    );
  }
}
