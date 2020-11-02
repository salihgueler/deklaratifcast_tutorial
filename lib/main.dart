import 'package:flutter/material.dart';

void main() {
  runApp(DeklaratifCastTutorialApp());
}

class DeklaratifCastTutorialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DeklaratifCastTutorialAppHomePage(),
    );
  }
}

class DeklaratifCastTutorialAppHomePage extends StatefulWidget {
  DeklaratifCastTutorialAppHomePage({Key key}) : super(key: key);

  @override
  _DeklaratifCastTutorialAppHomePageState createState() =>
      _DeklaratifCastTutorialAppHomePageState();
}

class _DeklaratifCastTutorialAppHomePageState
    extends State<DeklaratifCastTutorialAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          title: Text('Item position: $index'),
        ),
      ),
    );
  }
}
