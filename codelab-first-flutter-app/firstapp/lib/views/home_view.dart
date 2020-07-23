import 'package:firstapp/components/appBar/appBar.dart';
import 'package:firstapp/components/body/center/center.dart';
import 'package:firstapp/components/widgets/randomWords/random-words-widget.dart';

import 'package:flutter/material.dart';

Widget createHomeWidget() {
  return Scaffold(
      appBar: createAppBar("First learn app"),
      body: createCenterBody(RandomWordsWidget()));
}
