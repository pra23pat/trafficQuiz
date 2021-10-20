import 'importeverything.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControllers _qnController = Get.put(QuestionControllers());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Spacer(flex: 4,),
              Text("Score", style: Theme.of(context).textTheme.headline3!.copyWith(color: Colors.white70),),
              Spacer(),
              Text("${_qnController.numOfCorrectAns*10}/${_qnController.questions.length*10}", style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white70)),
              Spacer(flex: 4,),
            ],
          )
        ],
      ),
    );
  }
}
