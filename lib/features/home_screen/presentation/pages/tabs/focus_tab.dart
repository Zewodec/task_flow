import 'package:flutter/material.dart';

import '../../widgets/circle_timer.dart';

class FocusTab extends StatelessWidget {
  const FocusTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleTimer(),
            const SizedBox(height: 20),
            const Text('While your focus mode is on, all of your notifications will be off',
                style: TextStyle(color: Colors.white54, fontSize: 16), textAlign: TextAlign.center),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Start Focusing',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
