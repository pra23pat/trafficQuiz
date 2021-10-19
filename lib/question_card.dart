import 'importeverything.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({Key? key, required this.question}) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Image(
            image: AssetImage("images/${question.question}"),
          ),
          ...List.generate(
            question.options.length,
            (index) => Option(

            ),
          )
        ],
      ),
    );
  }
}
