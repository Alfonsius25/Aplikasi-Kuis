import "package:quiz/question.dart";

import 'question.dart';

class QuestionLogic {
  int _questionNumber = 0;

  List<Question> _questionList = [
    Question('Ir.Soekarno adalah presiden RI pertama.', true),
    Question('Planet terbesar adalah planet Bumi.', false),
    Question('Dasar negara indonesia yaitu UUD 1945.', false),
    Question('Lagu Indonesia Raya diciptakan oleh WR.Soepratman.', true),
    Question('Ir.H.Joko Widodo adalah presiden ke-6 Indonesia.', false),
    Question(
        'Keadilan bagi seluruh rakyat indonesia merupakan sila ke-4 dari pancasila.',
        false),
    Question('Jupiter adalah planet terbesar di tata surya.', true),
    Question('Planet Mars berada paling dekat dengan matahari.', false),
    Question('Kerajaan tertua di indonesia adalah kerajaan Sriwijaya.', false),
    Question(
        'Indonesia merupakan negara dengan penduduk terbanyak di dunia.', false)
  ];

  String getQuestion() => _questionList[_questionNumber].question;
  int getTotalQuestionText() => _questionList.length;
  int getQuestionNumberText() => _questionNumber + 1;
  bool getCorrectAnswer() => _questionList[_questionNumber].answer;

  void nextQuestion() {
    if (_questionNumber < _questionList.length - 1) {
      _questionNumber++;
      print(_questionNumber);
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questionList.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void resetQuestion() => _questionNumber = 0;
}
