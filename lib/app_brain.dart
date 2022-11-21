import 'package:quiz_app/question.dart';

class AppBrain {
  int _questionNumber = 0;

  final List<Question> _questionGroup = [
    Question(
      questionText: 'عدد الكواكب في المجموعة الشمسية هو ثمانية كواكب',
      questionImage: 'images/image-1.jpg',
      questionAnswer: true,
    ),
    Question(
      questionText: 'القطط هي حيوانات لاحمة',
      questionImage: 'images/image-2.jpg',
      questionAnswer: true,
    ),
    Question(
      questionText: 'الصين موجودة في القارة الإفريقية',
      questionImage: 'images/image-3.jpg',
      questionAnswer: false,
    ),
    Question(
        questionText: 'الأرض مسطحة وليست كروية',
        questionImage: 'images/image-4.jpg',
        questionAnswer: false),
    Question(
      questionText: 'بإستطاعة الإنسان البقاء على قيد الحياة بدون أكل اللحوم',
      questionImage: 'images/image-5.jpg',
      questionAnswer: true,
    ),
    Question(
      questionText: 'الشمس تدور حول الأرض والأرض تدور حول القمر',
      questionImage: 'images/image-6.jpg',
      questionAnswer: false,
    ),
    Question(
      questionText: 'الحيوانات لا تشعر بالألم',
      questionImage: 'images/image-7.jpg',
      questionAnswer: false,
    ),
  ];

  String getQuestionText() {
    return _questionGroup[_questionNumber].questionText;
  }

  String getQuestionImage() {
    return _questionGroup[_questionNumber].questionImage;
  }

  bool getQuestionAnswer() {
    return _questionGroup[_questionNumber].questionAnswer;
  }

  void resetQuestionNumber() {
    _questionNumber = 0;
  }

  void nextQuestion() {
    if (_questionNumber < _questionGroup.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questionGroup.length -1) {
      return true;
    } else {
      return false;
    }
  }
}
