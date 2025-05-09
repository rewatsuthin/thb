import 'package:flutter/material.dart';
import 'stt_screen.dart';
import 'tts_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Speech Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const STTScreen()),
                );
              },
              child: const Text('Speech to Text'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TTSScreen()),
                );
              },
              child: const Text('Text to Speech'),
            ),
          ],
        ),
      ),
    );
  }
}
