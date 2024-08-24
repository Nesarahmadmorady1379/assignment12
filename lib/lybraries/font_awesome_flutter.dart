import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontAwesomeFlutterExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Font Awesome Flutter Example'),
      ),
      body: Center(
        child: FaIcon(
          FontAwesomeIcons.heart,
          size: 100,
          color: Colors.red,
        ),
      ),
    );
  }
}
