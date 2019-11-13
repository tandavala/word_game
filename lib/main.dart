import 'package:flutter/material.dart';
import 'package:random_words/random_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final noun = new WordNoun.random();
    return MaterialApp(
      title: 'Word Game',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Word Game"),
        ),
        body: Center(
          child: Text('Noun: ${noun.asCapitalized}'),
        ),
      ),
    );
  }
}
