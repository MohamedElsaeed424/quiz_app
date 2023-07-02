

class QuizQuestion {
  final List<String> answer;
  final String question;
  const QuizQuestion(this.question, this.answer);

  List<String> getShuffledAnswers(){
    final shuffledList = List.of(answer);
    shuffledList.shuffle();
    return shuffledList ;
  }
}
