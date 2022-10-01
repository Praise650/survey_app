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
      question:
          'Which of the following best describe your current relationship',
      answer: '',
      isAnswered: false,
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
      isAnswered: false,
    ),
    QuestionModel(
      question: 'How often do you use our products?',
      answer: '',
      isAnswered: false,
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
      isAnswered: false,
    ),
    QuestionModel(
      question: 'How would you compare our products to our competitors’?',
      answer: '',
      isAnswered: false,
    ),
    QuestionModel(
      question: 'What important features are we missing?',
      answer: '',
      isAnswered: false,
    ),
    QuestionModel(
      question: 'What are you trying to solve by using our product?',
      answer: '',
      isAnswered: false,
    ),
    QuestionModel(
      question: 'What other types of people could find our product useful?',
      answer: '',
      isAnswered: false,
    ),
    QuestionModel(
      question: 'How easy is it to use our product?',
      answer: '',
      isAnswered: false,
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
      isAnswered: false,
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
      isAnswered: false,
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
      isAnswered: false,
    ),
  ];
}
