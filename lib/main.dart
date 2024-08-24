import 'dart:math';

import 'package:assignmwnt_12/libraries.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Assigmet12());
}

class Assigmet12 extends StatefulWidget {
  const Assigmet12({Key? key}) : super(key: key);

  @override
  _Assigmet12 createState() => _Assigmet12();
}

class _Assigmet12 extends State<Assigmet12> {
  List<Libraries> libraries = [
    Libraries('font_awesome_flutter', '100%'),
    Libraries('rflutter_alert', '100%'),
    Libraries('english_word', '100%'),
    Libraries('text_to_speech', '100%'),
    Libraries('linkify', '100%'),
    Libraries('photo_view', '100%'),
    Libraries('shimmer', "100%"),
    Libraries('audioplayers', '100%'),
    Libraries('flex_color_picker', '100%'),
    Libraries('pluto_grid', '100%')
  ];
  Random r = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List of 10 lybraries'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 180, 196, 190),
        ),
        body: Center(
          
          child: ListView.builder(
              itemCount: libraries.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Color.fromARGB(r.nextInt(244), r.nextInt(244),
                      r.nextInt(244), r.nextInt(244)),
                  child: ListTile(
                    leading: Text(
                      '${libraries[index].name}',
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: Text('${libraries[index].popularity}'),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
