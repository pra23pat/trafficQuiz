import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'importeverything.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControllers _questionControllers = Get.put(QuestionControllers());
    return Stack(
      children: [
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Text.rich(
                  TextSpan(
                    text: "Question 1",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: "/5",
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1.5,
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: PageView.builder(
                    itemCount: _questionControllers.questions.length,
                    itemBuilder: (context, index) => QuestionCard(question: _questionControllers.questions[index],)),
              ),

            ],
          ),
        )
      ],
    );
  }
}
