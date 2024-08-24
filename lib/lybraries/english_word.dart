import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class EnglishWordsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Scaffold(
      appBar: AppBar(
        title: Text('English Words Example'),
      ),
      body: Center(
        child: Text(
          wordPair.asPascalCase,
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}
