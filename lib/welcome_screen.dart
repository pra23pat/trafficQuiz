import 'package:flutter/material.dart';
import 'importeverything.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 3,),
                Text(
                  "Let's Play Quiz,",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.white,fontSize: 45, fontWeight: FontWeight.bold),
                ),
                Text("Please enter your name :"),
                Spacer(flex: 1,),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Full Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                Spacer(flex: 1,),
                InkWell(
                  onTap: () {
                  },
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )),
                    child: Text(
                      "Let's Start Quiz",
                      style: Theme.of(context)
                          .textTheme
                          .button!
                          .copyWith(color: kBlackColor),
                    ),
                  ),
                ),
                Spacer(flex: 3,),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
