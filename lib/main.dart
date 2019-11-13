import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_words/random_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final noun = new WordNoun.random();
    final adjective = WordAdjective.random();

    return MaterialApp(
      title: 'Word Game',
      home: RandomSentences(),
    );
  }
}

class RandomSentences extends StatefulWidget {
  @override
  createState() => _RandomSentecesState();
}

class _RandomSentecesState extends State<RandomSentences> {
  @override
  final adjective = WordAdjective.random();
  final noun = WordNoun.random();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Word Game"),
      ),
      body: Center(
        child: Text("Ola ${noun.asCapitalized}"),
      ),
    );
  }
}
