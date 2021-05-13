import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/controllers/question_controller.dart';
import 'package:quizapp/screens/constants.dart';
import 'package:quizapp/screens/welcome/welcome_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          WebsafeSvg.asset("assets/icons/bg1.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context).textTheme.headline3.copyWith(
                      color: kSecondaryColor,
                    ),
              ),
              Spacer(),
              Text(
                  "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: kSecondaryColor,
                      )),
              Spacer(flex: 3),
              Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: InkWell(
                    child: Container(
                      height: 46,
                      width: double.infinity,
                      child: Center(
                          child: Text(
                        "Start Again",
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              color: kBlackColor,
                            ),
                      )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        gradient: kPrimaryGradient,
                      ),
                    ),
                    onTap: () {
                      Get.to(WelcomeScreen());
                    }),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
