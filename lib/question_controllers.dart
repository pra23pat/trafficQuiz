import 'importeverything.dart';

class QuestionControllers extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => this._animation;

  late PageController _pageController;
  PageController get pageController => this._pageController;

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

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  late int _correctAns;
  int get correctAns => this._correctAns;

  late int _selectedAns;
  int get selectedAns => this._selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;



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
    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  void checkAns(Question question, int selectedIndex){
   _isAnswered = true;
   _correctAns = question.answer;
   _selectedAns = selectedIndex;

   if(_correctAns == _selectedAns) _numOfCorrectAns++;

   _animationController.stop();
   update();

   Future.delayed(Duration(seconds: 1), (){
     nextQuestion();
   });



  }
  void nextQuestion(){
    if(_questionNumber.value != _questions.length){
      _isAnswered = false;
      _pageController.nextPage(duration: Duration(milliseconds: 200), curve: Curves.ease);
      _animationController.reset();

      _animationController.forward().whenComplete(nextQuestion);
    }
    if(_questionNumber.value == _questions.length)
      {
        Get.to(() => ScoreScreen());
      }

  }


  void updateQuestionNum(int index){
    _questionNumber.value = index + 1;
  }



}
