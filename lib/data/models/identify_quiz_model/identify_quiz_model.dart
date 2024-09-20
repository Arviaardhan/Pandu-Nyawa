class QuizModel {
  final String imagePath;
  final String question;
  final List<String> options;
  final String correctAnswer;

  QuizModel({
    required this.imagePath,
    required this.question,
    required this.options,
    required this.correctAnswer,
  });
}

// Contoh data quiz
final QuizModel quiz1 = QuizModel(
  imagePath: 'lib/assets/images/luka-bakar.png',
  question: '1. Apa langkah pertama dalam penanganan syok anafilaksis?',
  options: [
    'Hubungi ambulans',
    'Berikan epinefrin',
    'Baringkan pasien',
    'Lakukan RJP',
  ],
  correctAnswer: 'Hubungi ambulans',
);

final QuizModel quiz2 = QuizModel(
  imagePath: 'lib/assets/images/quiz_image.png',
  question: 'Berapa lama waktu minimal untuk menahan alat suntik epinefrin pada paha?',
  options: [
    '1 detik',
    '3 detik',
    '5 detik',
    '10 detik',
  ],
  correctAnswer: '3 detik',
);

final QuizModel quiz3 = QuizModel(
  imagePath: 'lib/assets/images/quiz_image.png',
  question: 'Apa yang harus dilakukan jika pasien asma tidak memiliki inhaler?',
  options: [
    'Berikan obat inhaler orang lain',
    'Hubungi ambulans',
    'Bantu duduk dengan nyaman',
    'Lakukan RJP',
  ],
  correctAnswer: 'Hubungi ambulans',
);
