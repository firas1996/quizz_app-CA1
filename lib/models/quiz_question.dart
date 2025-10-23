class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> createShuffledAnswers() {
    final newList = List.of(answers);
    newList.shuffle();
    return newList;
  }
}
