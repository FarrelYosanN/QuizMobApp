// quiz_data.dart
class QuizQuestion {
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  QuizQuestion({
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
  });
}

final List<QuizQuestion> quizQuestions = [
  QuizQuestion(
    question: 'Siapakah penemu telepon?',
    options: ['Thomas Edison', 'Alexander Graham Bell', 'Nikola Tesla', 'Albert Einstein'],
    correctAnswerIndex: 1,
  ),
  QuizQuestion(
    question: 'Berapa jumlah planet dalam tata surya?',
    options: ['6', '8', '10', '12'],
    correctAnswerIndex: 1,
  ),
  QuizQuestion(
    question: 'Siapakah penemu teori relativitas?',
    options: ['Thomas Edison', 'Isaac Newton', 'Nikola Tesla', 'Albert Einstein'],
    correctAnswerIndex: 3,
  ),
  QuizQuestion(
    question: 'Apa yang menjadi satuan kecepatan cahaya?',
    options: ['Kilometer per jam', 'Meter per detik', 'Knot', 'Parsec'],
    correctAnswerIndex: 1,
  ),
  QuizQuestion(
    question: 'Siapakah penemu lampu pijar?',
    options: ['Thomas Edison', 'Isaac Newton', 'Nikola Tesla', 'Albert Einstein'],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    question: 'Siapakah presiden pertama Indonesia?',
    options: ['Soekarno', 'Soeharto', 'Joko Widodo', 'Gus Dur'],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    question: 'Berapa jumlah provinsi di Indonesia?',
    options: ['30', '31', '32', '34'],
    correctAnswerIndex: 3,
  ),
  QuizQuestion(
    question: 'Apa ibukota Indonesia?',
    options: ['Surabaya', 'Bandung', 'Jakarta', 'Bali'],
    correctAnswerIndex: 2,
  ),
  QuizQuestion(
    question: 'Siapakah penemu gravitasi?',
    options: ['Isaac Newton', 'Galileo Galilei', 'Albert Einstein', 'Nikola Tesla'],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    question: 'Berapa lapisan kulit bumi?',
    options: ['3', '4', '5', '6'],
    correctAnswerIndex: 0,
  ),
];
