import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkifyExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Linkify Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Linkify(
          onOpen: (link) async {
            final url = link.url;
            if (await canLaunchUrl(Uri.parse(url))) {
              await launchUrl(Uri.parse(url));
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Could not launch $url')),
              );
            }
          },
          text:
              "Made by https://cretezy.com. Visit https://flutter.dev for more info.",
          style: TextStyle(fontSize: 20),
          linkStyle: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
