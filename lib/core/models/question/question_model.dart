class QuestionModel {
  final String? question;
  final String? answer;
  final List<String>? options;
  final bool? isAnswered;

  QuestionModel({
    this.question,
    this.answer,
    this.options,
    this.isAnswered,
  });

  static List<QuestionModel> questionDummy = [
    QuestionModel(
      question: 'What is your favourite sport',
      options: [
        'Football',
        'Basketball',
        'Volleyball',
        'Tennis',
        'Formula one'
      ],
      answer: '',
      isAnswered: false,
    ),
    QuestionModel(
      question: 'Who is your favourite SportMan',
      answer: '',
      isAnswered: false,
    ),
    QuestionModel(
      question: 'Why do you love the sport you chose',
      answer: '',
      isAnswered: false,
    ),
  ];
}
