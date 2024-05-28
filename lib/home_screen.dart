import 'package:flutter/material.dart';
import 'main.dart'; // Import file quiz_screen.dart

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/wal.jpg'), // Ganti dengan path gambar yang Anda inginkan
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter, // Menggeser ke atas tengah
            child: Padding(
              padding: EdgeInsets.only(top: 100), // Sesuaikan dengan jarak yang diinginkan
              child: Text(
                'Mobile Quiz',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned.fill(
            bottom: 70, // Sesuaikan angka ini untuk menggeser tombol ke atas
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuizScreen()), // Ganti dengan QuizScreen()
                  );
                },
                child: Text('Mulai Quiz'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
