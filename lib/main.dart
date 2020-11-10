import 'dart:async';

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
  Timer _timer;
  int _seconds = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          color: _isTimerActive
              ? const Color(0xFFE7626C)
              : const Color(0xFF232B55),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Elapsed Time',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '$_seconds',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(_isTimerActive ? Icons.stop : Icons.play_arrow),
        onPressed: () {
          if (_isTimerActive) {
            setState(() {
              _timer.cancel();
              _seconds = 0;
            });
          } else {
            _timer = Timer.periodic(Duration(seconds: 1), (timer) {
              setState(() {
                _seconds++;
              });
            });
          }
        },
      ),
    );
  }

  bool get _isTimerActive => (_timer != null && _timer.isActive);
}
