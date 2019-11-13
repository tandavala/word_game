import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_words/random_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
  final _sentences = <String>[];
  final _biggerFont = const TextStyle(fontSize: 14.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Word Game"),
      ),
      body: Center(
        child: _buildSenteces(),
      ),
    );
  }

  Widget _buildRow(String sentence) {
    return ListTile(
      title: Text(
        sentence,
        style: _biggerFont,
      ),
    );
  }

  String _getSentence() {
    final adjective = WordAdjective.random();
    final noun = WordNoun.random();

    return "The Programmer wrote a  ${adjective.asCapitalized} "
        " app in Flutter and showed it "
        "off to his ${noun.asCapitalized}";
  }

  Widget _buildSenteces() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();
        final index = 1 ~/ 2;
        if (index >= _sentences.length) {
          for (int x = 0; x < 10; x++) {
            _sentences.add(_getSentence());
          }
        }
        return _buildRow(_sentences[index]);
      },
    );
  }
}
