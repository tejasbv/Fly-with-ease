import 'package:flutter/material.dart';
import 'package:fly_with_ease/Loader.dart';
import 'package:fly_with_ease/apicaller.dart';
import 'package:fly_with_ease/pages/Search.dart';

import 'bottomLayout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Search();
  }
}
