import 'importeverything.dart';

class QuestionControllers extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => this._animation;

  List<Question> _questions = sample
      .map(
        (question) => Question(
          id: question['id'],
          question: question["questions"],
          answer: question["answer_index"],
          options: (question["options"] as List<String>),
        ),
      )
      .toList();
  List<Question> get questions => this._questions;

  @override
  void onInit() {
    _animationController = AnimationController(
      duration: (Duration(seconds: 15)),
      vsync: this,
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        update();
      });
    _animationController.forward();
    super.onInit();
  }
}
