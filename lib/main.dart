import 'package:flutter/material.dart';
import 'package:mobilequiz/dataquiz/quiz_data.dart';
import 'package:mobilequiz/result_screen.dart'; // Import file dart baru
import 'home_screen.dart'; // Import file home_screen.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(), // Ganti dengan HomeScreen()
    );
  }
}

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int score = 0;

  void checkAnswer(int selectedIndex) {
    bool isCorrect = selectedIndex == quizQuestions[currentQuestionIndex].correctAnswerIndex;
    setState(() {
      if (isCorrect) {
        score += 10;
      }
      if (currentQuestionIndex < quizQuestions.length - 1) {
        currentQuestionIndex++;
      } else {
        _showResult();
      }
    });
  }

  void _showResult() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(score: score), // Pass the score to the result screen
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Pertanyaan ${currentQuestionIndex + 1}/${quizQuestions.length}',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Text(
              quizQuestions[currentQuestionIndex].question,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(
                quizQuestions[currentQuestionIndex].options.length,
                    (index) => ElevatedButton(
                  onPressed: () {
                    checkAnswer(index);
                  },
                  child: Text(quizQuestions[currentQuestionIndex].options[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
