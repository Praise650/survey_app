class QuestionModel {
  final String? question;
  final String? answer;
  final List<String>? options;
  bool? isAnswered;

  updateCheckbox() {
    isAnswered = !isAnswered!;
  }

  QuestionModel({
    this.question,
    this.answer,
    this.options,
    this.isAnswered = false,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> json) => QuestionModel(
        options: json['options'],
        isAnswered: json['isAnswered'],
        answer: json['answer'],
        question: json['question'],
      );

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
    ),
    QuestionModel(
      question: 'Who is your favourite SportMan',
      answer: '',
    ),
    QuestionModel(
      question:
          'Which of the following best describe your current relationship',
      answer: '',
      options: [
        'Married',
        'Widowed',
        'Divorced',
        'Separated',
        'Single, Never Married'
      ],
    ),
    QuestionModel(
      question: 'Why do you love the sport you chose',
      answer: '',
    ),
    QuestionModel(
      question: 'How often do you use our products?',
      answer: '',
      options: [
        'Very often',
        'often',
        'Occasionally',
        'Not at all',
      ],
    ),
    QuestionModel(
      question: 'Which features are most valuable to you',
      answer: '',
    ),
    QuestionModel(
      question: 'How would you compare our products to our competitors’?',
      answer: '',
    ),
    QuestionModel(
      question: 'What important features are we missing?',
      answer: '',
    ),
    QuestionModel(
      question: 'What are you trying to solve by using our product?',
      answer: '',
    ),
    QuestionModel(
      question: 'What other types of people could find our product useful?',
      answer: '',
      isAnswered: false,
    ),
    QuestionModel(
      question: 'How easy is it to use our product?',
      answer: '',
      options: [
        'Very easy',
        'Easy',
        'Not Easy',
        'Hard',
      ],
    ),
    QuestionModel(
      question: 'How would you rate the value for money?',
      answer: '',
      options: [
        '1-3',
        '4-6',
        '7-9',
        '10',
      ],
    ),
    QuestionModel(
      question: 'How likely are you to recommend this product to others?',
      answer: '',
      options: [
        'Very Likely',
        'Likely',
        'Just Maybe',
        'Not at all',
      ],
    ),
    QuestionModel(
      question: 'How could we improve our product to better meet your needs?',
      answer: '',
    ),
  ];
// 'Which of this is true about Real Estate Management  '
// 'and Investment in the year 1844 and accepted by over 200 Countries in '
// 'our modern age and time',
}
