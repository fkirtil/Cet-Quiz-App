import 'Question.dart';
import 'Option.dart';

class QuizManager_2 {
  QuizManager_2() {
    _questions.add(Question('Hangi meyve kırmızıdır?', [
      Option('Elma', 10),
      Option('Muz', 5),
      Option('üzüm', 0),
      Option('salata', -5),
    ]));

    _questions.add(Question('Hangisi sürüngendir?', [
      Option('Yılan', 10),
      Option('Zebra', 0),
      Option('Yarasa', 0),
      Option('Kuş', -5),
    ]));
    _questions.add(Question('Hangisi bir Barış Manço şarkısıdır?', [
      Option('Sakız Hanımla Mahur Bey', 10),
      Option('Dertli', 5),
      Option('Bu değil', 0),
      Option('Bu hiç değil', -5),
    ]));

    _questions.add(Question('Hangisi sebzedir?', [
      Option('Muz', 10),
      Option('Armut', 5),
      Option('Pırasa', 0),
      Option('Üzüm', 0),
    ]));
    _questions.shuffle();
    for (var question in _questions) {
      question.options.shuffle();
    }
  }
  List<Question> _questions = [];
  int _score = 0;
  int currentQuestionId = 0;
  void nextQuestion(score) {
    if (currentQuestionId < _questions.length) {
      _score += score;
      currentQuestionId++;
    }
    print(currentQuestionId);
  }

  int getTotalScore() => _score;
  int getCurrentId() => currentQuestionId + 1;
  int totalQuestionNumber() => _questions.length;
  bool isFinished() {
    return currentQuestionId >= _questions.length;

  }

  Question getCurrentQuestion() {
    print('getCurrentQueestion $currentQuestionId');
    if (currentQuestionId < _questions.length) {
      return _questions[currentQuestionId];
    } else {
      return Question('', []);
    }
  }
}