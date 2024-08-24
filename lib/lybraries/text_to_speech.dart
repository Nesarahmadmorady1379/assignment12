import 'package:flutter/material.dart';
import 'package:text_to_speech/text_to_speech.dart';

class TextToSpeechExample extends StatefulWidget {
  @override
  _TextToSpeechExampleState createState() => _TextToSpeechExampleState();
}

class _TextToSpeechExampleState extends State<TextToSpeechExample> {
  final TextToSpeech tts = TextToSpeech();

  void _speak() {
    tts.speak("Hello, this is an example of Text to Speech.");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text to Speech Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _speak,
          child: Text('Speak'),
        ),
      ),
    );
  }
}
