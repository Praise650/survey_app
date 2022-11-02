class QuestionModel {
  final String? question;
  final String? answer;
  final List<String>? options;
  int? answered;

  String? getAnswer() => answered != null ? options![answered ?? 0] : null;

  QuestionModel({
    this.question,
    this.answer,
    this.options,
    this.answered,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> json) => QuestionModel(
        options: json['options'],
        answered: json['answered'],
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

  static List<QuestionModel> healthQuestionDummy = [
    QuestionModel(
      question: 'Employment Status of respondent:',
      options: [
        'Housewife',
        'Self-employed',
        'Employed',
        'Unemployed',
        'Student',
      ],
    ),
    QuestionModel(
      question: 'What is your marital status?',
      options: [
        "Single",
        "Married",
        "Separated",
        "Divorced",
        "Widowed/Widower",
      ],
    ),
    QuestionModel(
      question: 'Highest level of education attained?',
      options: [
        "No Formal education",
        "Primary",
        "Secondary",
        "Tertiary",
      ],
    ),
    QuestionModel(
      question: 'What is your ethnic group?',
      options: [
        "Yoruba",
        "Igbo",
        "Hausa",
        "Others",
      ],
    ),
    QuestionModel(
      question: 'How much do you earn weekly?',
      options: [
        "0 - 1000",
        "1000 - 5000",
        "5000 - 10000",
        "10000 - 20000",
        "20000 and above",
      ],
    ),
    QuestionModel(
      question: 'Have you ever heard of cervical cancer?',
      options: [
        "Yes",
        "No",
      ],
    ),
    QuestionModel(
      question: 'Have you ever heard of human papilloma virus (HPV)?',
      options: [
        "Yes",
        "No",
        "Don't know",
      ],
    ),
    QuestionModel(
      question: 'Is cervical cancer preventable?',
      options: [
        "Yes",
        "No",
        "Don't know",
      ],
    ),
    QuestionModel(
      question: 'Is having many different sexual partners a risk factor?',
      options: [
        "Yes",
        "No",
        "Don't know",
      ],
    ),
    QuestionModel(
      question: 'Is smoking a risk for cervical cancer?',
      options: [
        "Yes",
        "No",
        "Don't know",
      ],
    ),
    QuestionModel(
      question: 'Is HIV a risk for cervical cancer?',
      options: [
        "Yes",
        "No",
        "Don't know",
      ],
    ),
    QuestionModel(
      question: 'Is oral contraception a risk for cervical cancer?',
      options: [
        "Yes",
        "No",
        "Don't know",
      ],
    ),
    QuestionModel(
      question: 'Is giving birth to many babies a risk factor?',
      options: [
        "Yes",
        "No",
        "Don't know",
      ],
    ),
    QuestionModel(
      question:
          'Is human papilloma virus (HIV) a risk factor for cervical cancer?',
      options: [
        "Yes",
        "No",
        "Don't know",
      ],
    ),
    QuestionModel(
      question:
          'Are you more likely to develop cervical cancer if a family member has/had it?',
      options: [
        "Yes",
        "No",
        "Don't know",
      ],
    ),
    QuestionModel(
      question: 'Is vaginal bleeding a symptom of cervical cancer?',
      options: [
        "Yes",
        "No",
        "Don't know",
      ],
    ),
    QuestionModel(
      question: 'Is foul smelling a symptom of cervical cancer?',
      options: [
        "Yes",
        "No",
        "Don't know",
      ],
    ),
    QuestionModel(
      question:
          'Is experiencing pain during intercourse a symptom of cervical cancer?',
      options: [
        "Yes",
        "No",
        "Don't know",
      ],
    ),
    QuestionModel(
      question: 'Do you know any method of screening for cervical cancer?',
      options: [
        "Yes",
        "No",
        "Don't know",
      ],
    ),
    QuestionModel(
      question: 'If yes, is pap smear a method?',
      options: [
        "Yes",
        "No",
        "Don't know",
      ],
    ),
    QuestionModel(
      question: 'If yes, is visual inspection of cervix a method?',
      options: [
        "Yes",
        "No",
        "Don't know",
      ],
    ),
  ];
// 'Which of this is true about Real Estate Management  '
// 'and Investment in the year 1844 and accepted by over 200 Countries in '
// 'our modern age and time',
}
