import '../option_model.dart';
import 'question_model.dart';

class QuestionBank {
  List<QuestionModel> generalQuestions = [
    QuestionModel(
      question: 'What is your favourite sport',
      options: [
        OptionModel(text: 'Football'),
        OptionModel(text: 'Basketball'),
        OptionModel(text: 'Volleyball'),
        OptionModel(text: 'Tennis'),
        OptionModel(text: 'Formula one'),
      ],
    ),
    QuestionModel(
      question: 'Who is your favourite SportMan',
    ),
    QuestionModel(
      question:
      'Which of the following best describe your current relationship',
      options: [
        OptionModel(text: 'Married'),
        OptionModel(text: 'Widowed'),
        OptionModel(text: 'Divorced'),
        OptionModel(text: 'Separated'),
        OptionModel(text: 'Single, Never Married'),
      ],
    ),
    QuestionModel(
      question: 'Why do you love the sport you chose',
    ),
    QuestionModel(
      question: 'How often do you use our products?',
      options: [
        OptionModel(text: 'Very often'),
        OptionModel(text: 'often'),
        OptionModel(text: 'Occasionally'),
        OptionModel(text: 'Not at all'),
      ],
    ),
    QuestionModel(
      question: 'Which features are most valuable to you',
    ),
    QuestionModel(
      question: 'How would you compare our products to our competitors’?',
    ),
    QuestionModel(
      question: 'What important features are we missing?',
    ),
    QuestionModel(
      question: 'What are you trying to solve by using our product?',
    ),
    QuestionModel(
      question: 'What other types of people could find our product useful?',
    ),
    QuestionModel(
      question: 'How easy is it to use our product?',
      options: [
        OptionModel(text: 'Very easy'),
        OptionModel(text: 'Easy'),
        OptionModel(text: 'Not Easy'),
        OptionModel(text: 'Hard'),
      ],
    ),
    QuestionModel(
      question: 'How would you rate the value for money?',
      options: [
        OptionModel(text: '1-3'),
        OptionModel(text: '4-6'),
        OptionModel(text: '7-9'),
        OptionModel(text: '10'),
      ],
    ),
    QuestionModel(
      question: 'How likely are you to recommend this product to others?',
      options: [
        OptionModel(text: 'Very Likely'),
        OptionModel(text: 'Likely'),
        OptionModel(text: 'Just Maybe'),
        OptionModel(text: 'Not at all'),
      ],
    ),
    QuestionModel(
      question: 'How could we improve our product to better meet your needs?',
    ),
  ];

  List<QuestionModel> healthQuestion = [
    QuestionModel(
      question: 'Employment Status of respondent:',
      options: [
        OptionModel(text: 'Housewife'),
        OptionModel(text: 'Self-employed'),
        OptionModel(text: 'Employed'),
        OptionModel(text: 'Unemployed'),
        OptionModel(text: 'Student'),
      ],
    ),
    QuestionModel(
      question: 'What is your marital status?',
      options: [
        OptionModel(text: "Single"),
        OptionModel(text: "Married"),
        OptionModel(text: "Separated"),
        OptionModel(text: "Divorced"),
        OptionModel(text: "Widowed/Widower"),
      ],
    ),
    QuestionModel(
      question: 'Highest level of education attained?',
      options: [
        OptionModel(text: "No Formal education"),
        OptionModel(text: "Primary"),
        OptionModel(text: "Secondary"),
        OptionModel(text: "Tertiary"),
      ],
    ),
    QuestionModel(
      question: 'What is your ethnic group?',
      options: [
        OptionModel(text: "Yoruba"),
        OptionModel(text: "Igbo"),
        OptionModel(text: "Hausa"),
        OptionModel(text: "Others"),
      ],
    ),
    QuestionModel(
      question: 'How much do you earn weekly?',
      options: [
        OptionModel(text: "0 - 1000"),
        OptionModel(text: "1000 - 5000"),
        OptionModel(text: "5000 - 10000"),
        OptionModel(text: "10000 - 20000"),
        OptionModel(text: "20000 and above"),
      ],
    ),
    QuestionModel(
      question: 'Have you ever heard of cervical cancer?',
      options: [
        OptionModel(text: "Yes"),
        OptionModel(text: "No"),
      ],
    ),
    QuestionModel(
      question: 'Have you ever heard of human papilloma virus (HPV)?',
      options: [
        OptionModel(text: "Yes"),
        OptionModel(text: "No"),
        OptionModel(text: "Don't know"),
      ],
    ),
    QuestionModel(
      question: 'Is cervical cancer preventable?',
      options: [
        OptionModel(text: "Yes"),
        OptionModel(text: "No"),
        OptionModel(text: "Don't know"),
      ],
    ),
    QuestionModel(
      question: 'Is having many different sexual partners a risk factor?',
      options: [
        OptionModel(text: "Yes"),
        OptionModel(text: "No"),
        OptionModel(text: "Don't know"),
      ],
    ),
    QuestionModel(
      question: 'Is smoking a risk for cervical cancer?',
      options: [
        OptionModel(text: "Yes"),
        OptionModel(text: "No"),
        OptionModel(text: "Don't know"),
      ],
    ),
    QuestionModel(
      question: 'Is HIV a risk for cervical cancer?',
      options: [
        OptionModel(text: "Yes"),
        OptionModel(text: "No"),
        OptionModel(text: "Don't know"),
      ],
    ),
    QuestionModel(
      question: 'Is oral contraception a risk for cervical cancer?',
      options: [
        OptionModel(text: "Yes"),
        OptionModel(text: "No"),
        OptionModel(text: "Don't know"),
      ],
    ),
    QuestionModel(
      question: 'Is giving birth to many babies a risk factor?',
      options: [
        OptionModel(text: "Yes"),
        OptionModel(text: "No"),
        OptionModel(text: "Don't know"),
      ],
    ),
    QuestionModel(
      question:
      'Is human papilloma virus (HIV) a risk factor for cervical cancer?',
      options: [
        OptionModel(text: "Yes"),
        OptionModel(text: "No"),
        OptionModel(text: "Don't know"),
      ],
    ),
    QuestionModel(
      question:
      'Are you more likely to develop cervical cancer if a family member has/had it?',
      options: [
        OptionModel(text: "Yes"),
        OptionModel(text: "No"),
        OptionModel(text: "Don't know"),
      ],
    ),
    QuestionModel(
      question: 'Is vaginal bleeding a symptom of cervical cancer?',
      options: [
        OptionModel(text: "Yes"),
        OptionModel(text: "No"),
        OptionModel(text: "Don't know"),
      ],
    ),
    QuestionModel(
      question: 'Is foul smelling a symptom of cervical cancer?',
      options: [
        OptionModel(text: "Yes"),
        OptionModel(text: "No"),
        OptionModel(text: "Don't know"),
      ],
    ),
    QuestionModel(
      question:
      'Is experiencing pain during intercourse a symptom of cervical cancer?',
      options: [
        OptionModel(text: "Yes"),
        OptionModel(text: "No"),
        OptionModel(text: "Don't know"),
      ],
    ),
    QuestionModel(
      question: 'Do you know any method of screening for cervical cancer?',
      options: [
        OptionModel(text: "Yes"),
        OptionModel(text: "No"),
        OptionModel(text: "Don't know"),
      ],
    ),
    QuestionModel(
      question: 'If yes, is pap smear a method?',
      options: [
        OptionModel(text: "Yes"),
        OptionModel(text: "No"),
        OptionModel(text: "Don't know"),
      ],
    ),
    QuestionModel(
      question: 'If yes, is visual inspection of cervix a method?',
      options: [
        OptionModel(text: "Yes"),
        OptionModel(text: "No"),
        OptionModel(text: "Don't know"),
      ],
    ),
  ];
}
