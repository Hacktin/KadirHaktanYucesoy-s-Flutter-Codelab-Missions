import 'package:english_words/english_words.dart';
import 'package:firstapp/components/body/text/text.dart';
import 'package:firstapp/components/widgets/randomWords/random-words-widget.dart';
import 'package:flutter/material.dart';

class RandomWordState extends State<RandomWordsWidget> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return createTextBody(wordPair.asPascalCase);
  }
}
