import 'importeverything.dart';

class Option extends StatelessWidget {
  const Option({
    Key? key,required this.text,required this.index,required this.press,
  }) : super(key: key);
  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionControllers>(
      init: QuestionControllers(),
      builder: (qnController) {

        Color getTgeRightColor(){
          if(qnController.isAnswered){
            if(index == qnController.correctAns){
              return kGreenColor;
            }else if(index == qnController.selectedAns && qnController.selectedAns != qnController.correctAns){
              return kRedColor;
            }

          }
          return Colors.black45;
        }

        IconData getTheRightIcon(){
          return getTgeRightColor() == kRedColor ? Icons.close : Icons.done;
        }

        return InkWell(
           onTap: press,
          child: Container(
            margin: EdgeInsets.only(top: kDefaultPadding),
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              border: Border.all(color: getTgeRightColor()),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${index + 1}. $text", style: TextStyle(color: getTgeRightColor(), fontSize: 16),),
                Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    color: getTgeRightColor() == Colors.black45 ? Colors.transparent : getTgeRightColor(),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: getTgeRightColor()),
                  ),
                  child: getTgeRightColor()==Colors.black45 ? null: Icon(getTheRightIcon(), size: 20,),
                )
              ],
            ),
          ),
        );
      }
    );
  }
}