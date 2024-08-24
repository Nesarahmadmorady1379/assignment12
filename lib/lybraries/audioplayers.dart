import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioplayersExample extends StatelessWidget {
  final AudioPlayer audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audioplayers Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await audioPlayer.play(
              UrlSource(
                  'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3'),
            );
          },
          child: Text('Play Audio'),
        ),
      ),
    );
  }
}
