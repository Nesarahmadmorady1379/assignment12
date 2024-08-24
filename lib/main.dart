import 'dart:math';

import 'package:assignmwnt_12/libraries.dart';
import 'package:assignmwnt_12/lybraries/audioplayers.dart';
import 'package:assignmwnt_12/lybraries/english_word.dart';
import 'package:assignmwnt_12/lybraries/flex_color_picker.dart';
import 'package:assignmwnt_12/lybraries/flutter_linkify.dart';
import 'package:assignmwnt_12/lybraries/font_awesome_flutter.dart';
import 'package:assignmwnt_12/lybraries/photo_view.dart';
import 'package:assignmwnt_12/lybraries/pluto_grid.dart';
import 'package:assignmwnt_12/lybraries/rflutter_alert.dart';
import 'package:assignmwnt_12/lybraries/shimmer.dart';
import 'package:assignmwnt_12/lybraries/text_to_speech.dart';
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
    Libraries('english_word', '99%'),
    Libraries('text_to_speech', '93%'),
    Libraries('linkify', '97%'),
    Libraries('photo_view', '100%'),
    Libraries('shimmer', "100%"),
    Libraries('audioplayers', '100%'),
    Libraries('flex_color_picker', '98%'),
    Libraries('pluto_grid', '97%')
  ];

  Random r = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List of 10 Libraries'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 180, 196, 190),
        ),
        body: Center(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns in the grid
              crossAxisSpacing: 10.0, // Horizontal spacing between items
              mainAxisSpacing: 10.0, // Vertical spacing between items
            ),
            itemCount: libraries.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // Handle navigation to different library examples
                  switch (libraries[index].name) {
                    case 'text_to_speech':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TextToSpeechExample(),
                        ),
                      );
                      break;
                    case 'font_awesome_flutter':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FontAwesomeFlutterExample(),
                        ),
                      );
                      break;
                    case 'rflutter_alert':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RflutterAlertExample(),
                        ),
                      );
                      break;
                    case 'english_word':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EnglishWordsExample(),
                        ),
                      );
                      break;
                    case 'linkify':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LinkifyExample(),
                        ),
                      );
                      break;
                    case 'photo_view':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PhotoViewExample(),
                        ),
                      );
                      break;
                    case 'shimmer':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShimmerExample(),
                        ),
                      );
                      break;
                    case 'audioplayers':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AudioplayersExample(),
                        ),
                      );
                      break;
                    case 'flex_color_picker':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FlexColorPickerExample(),
                        ),
                      );
                      break;
                    case 'pluto_grid':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlutoGridExample(),
                        ),
                      );
                      break;
                    default:
                      break;
                  }
                },
                child: GridTile(
                  header: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '${libraries[index].name}',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  footer: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '${libraries[index].popularity}',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  child: Container(
                    color: Color.fromARGB(r.nextInt(244), r.nextInt(244),
                        r.nextInt(244), r.nextInt(244)),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
