import 'package:english_words/english_words.dart';
import 'package:firstapp/components/custom-widgets/random-words/random-words-widget.dart';
import 'package:firstapp/core/constables/double-size-values.dart';
import 'package:flutter/material.dart';

final padding = sizeValues["padding"];
final fontSize = sizeValues["fontSize"];

class RandomWordState extends State<RandomWordsWidget> {
  final List<WordPair> _suggestions = <WordPair>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Startup Generator Name")),
        body: buildSuggestionList(_suggestions));
  }
}

Widget buildSuggestionList(List<WordPair> lists) {
  return ListView.builder(itemBuilder: (context, i) {
    if (i.isOdd) return Divider();

    final index = i ~/ 2;

    if (index >= lists.length) {
      lists.addAll(generateWordPairs().take(10));
    }

    return buildRow(lists[index], fontSize["default"]);
  });
}

Widget buildRow(WordPair pair, double size) {
  return ListTile(
    title: Text(pair.asPascalCase, style: TextStyle(fontSize: size)),
  );
}
