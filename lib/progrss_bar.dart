import 'importeverything.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xff3f4768),
          width: 3,
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      child: GetBuilder<QuestionControllers>(
        init: QuestionControllers(),
        builder: (controller) {
          return Stack(
            children: [
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  width: constraints.maxWidth * controller.animation.value,
                  decoration: BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              Positioned.fill(
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${(controller.animation.value*15).round()} sec"),
                      Icon(Icons.alarm),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      )
    );
  }
}
