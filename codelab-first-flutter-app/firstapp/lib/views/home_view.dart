import 'package:firstapp/components/custom-widgets/random-words/random-words-widget.dart';

import 'package:flutter/material.dart';

Widget createHomeWidget() {
  return Scaffold(body: centerRandowWord());
}

Center centerRandowWord() => Center(child: RandomWordsWidget());
