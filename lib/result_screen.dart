import 'package:flutter/material.dart';
import 'main.dart'; // Import file main.dart jika belum diimport
import 'namecard.dart'; // Import file namecard.dart

class ResultScreen extends StatelessWidget {
  final int score;

  ResultScreen({required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hasil Ujian'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Skor Anda: $score',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyApp(), // Ganti MyApp() dengan nama class utama di main.dart
                  ),
                );
              },
              child: Text('Ulangi'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NameCard(), // Ganti NameCard() dengan nama class di namecard.dart
                  ),
                );
              },
              child: Text('Credit'),
            ),
          ],
        ),
      ),
    );
  }
}
