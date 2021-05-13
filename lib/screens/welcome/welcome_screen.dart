import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/quiz/quiz_screen.dart';
import 'package:quizapp/screens/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        WebsafeSvg.asset(
          "assets/icons/bg1.svg",
          fit: BoxFit.fill,
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 2),
                Text(
                  "Let's Play Quiz,",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text("Enter your information below"),
                Spacer(),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFF00003f),
                    hintText: "Full Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () => Get.to(QuizScreen()),
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Text("Let's Start Quiz",
                        style: Theme.of(context).textTheme.button.copyWith(
                              color: Colors.black,
                            )),
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
