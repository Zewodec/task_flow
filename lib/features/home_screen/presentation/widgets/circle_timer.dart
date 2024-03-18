import 'dart:async';

import 'package:flutter/material.dart';

class CircleTimer extends StatefulWidget {
  const CircleTimer({super.key});

  @override
  State<CircleTimer> createState() => _CircleTimerState();
}

class _CircleTimerState extends State<CircleTimer> {
  Timer? _timer;
  int _remainingSeconds = 600;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    const oneSecond = Duration(seconds: 1);
    _timer = Timer.periodic(oneSecond, (timer) {
      setState(() {
        _remainingSeconds--;
        if (_remainingSeconds == 0) timer.cancel();
      });
    });
  }

  @override
  void dispose() {
    // Dispose the timer when the widget is disposed to prevent memory leaks
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 215,
            height: 215,
            child: CircularProgressIndicator(
              value: _remainingSeconds / 600, // Assuming a minute-long timer
              strokeWidth: 10,
              backgroundColor: Colors.white24,
            ),
          ),
          Text(
            '${(_remainingSeconds ~/ 60).toString().padLeft(2, '0')}:${(_remainingSeconds % 60).toString().padLeft(2, '0')}',
            style: const TextStyle(fontSize: 40, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
