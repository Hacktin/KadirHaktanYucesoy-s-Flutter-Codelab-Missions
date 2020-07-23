import 'package:english_words/english_words.dart';
import 'package:firstapp/components/custom-widgets/random-words/random-words-widget.dart';
import 'package:firstapp/core/constables/double-size-values.dart';
import 'package:flutter/material.dart';

class RandomWordState extends State<RandomWordsWidget> {
  final padding = sizeValues["padding"];
  final fontsize = sizeValues["fontSize"];

  final List<WordPair> _suggestions = <WordPair>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Startup Generator Name")),
      body: buildSuggestions(),
    );
  }

  Widget buildSuggestions() {
    return ListView.builder(itemBuilder: (context, i) {
      if (i.isOdd) return Divider();

      final index = i ~/ 2;

      if (index >= _suggestions.length) {
        _suggestions.addAll(generateWordPairs().take(10));
      }

      return buildRow(_suggestions[index]);
    });
  }

  Widget buildRow(WordPair pair) {
    return ListTile(
      title: Text(pair.asPascalCase,
          style: TextStyle(fontSize: fontsize["default"])),
    );
  }
}
