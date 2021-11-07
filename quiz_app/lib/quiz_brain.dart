import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'question.dart';

class QuizBrain {
  List<Icon> scoreKeeper = [];
  int scoreCount = 0;

  final List<Question> _questionBank = [
    Question(questionText: 'Peanuts are not nuts!', answer: true),
    Question(
        questionText: 'People may sneeze or cough while sleeping deeply.',
        answer: false),
    Question(
        questionText: 'Electrons move faster than the speed of light.',
        answer: false),
    Question(questionText: 'There is no snow on Minecraft.', answer: false),
    Question(questionText: 'Light travels in a straight line.', answer: true),
    Question(
        questionText: 'The Mona Liza was stolen from the Louvre in 1911.',
        answer: true),
    Question(
        questionText: 'You can change your personality type.', answer: false),
    Question(
        questionText:
            'SWOT analysis is a type of personality test used to screen job applicants.',
        answer: false),
    Question(
        questionText: 'There are three rivers in Saudi Arabia.', answer: false),
    Question(
        questionText: 'The Great Wall of China is visible from space.',
        answer: false),
    Question(
        questionText:
            'When the Eiffel Tower was unveiled, the Parisian art community hated it.',
        answer: true),
    Question(
        questionText: 'There are more ancient pyramids in Sudan than in Egypt.',
        answer: true),
    Question(
        questionText: 'The Atlantic Ocean is the warmest in the world.',
        answer: false),
  ];

  int _questionNumber = 0;

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].answer;
  }

  void nextQuestion(context) {
    if (_questionBank.length - 1 > _questionNumber) {
      _questionNumber++;
    } else {
      int totalQuestions = _questionBank.length;
      _onButtonPressed(context, totalQuestions);
      scoreKeeper = [];
      scoreCount = 0;
      _questionNumber = 0;
    }
  }

  _onButtonPressed(context, totalQuestions) {
    Alert(
        context: context,
        title: "QUIZ FINISHED!",
        desc: "Your Score: $scoreCount/$totalQuestions",
        buttons: [
          DialogButton(
            child: const Text(
              'Play Again',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            color: Colors.teal,
            onPressed: () => Navigator.pop(context),
          )
        ]).show();
  }

  void checkAnswer(bool answer) {
    if (_questionBank[_questionNumber].answer == answer) {
      scoreCount++;
      scoreKeeper.add(const Icon(
        Icons.check,
        color: Colors.green,
      ));
    } else {
      scoreKeeper.add(const Icon(
        Icons.close,
        color: Colors.red,
      ));
    }
  }
}
