import 'package:flutter/material.dart';
import 'package:quiz_app_se3/data/questions.dart';
import 'package:quiz_app_se3/question_screen.dart';
import 'package:quiz_app_se3/result_screen.dart';
import 'package:quiz_app_se3/start_screen.dart';

// Widget Class //
class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

// State Class //
class _QuizState extends State<Quiz> {
  String activeScreen = "start-screen";
  List<String> selectedAnswer = [];

  String stertScreenText = "start-screen";
  String questionScreenText = "question-screen";
  String resultScreenText = "result_screen";

  void switchScreen() {
    selectedAnswer = [];
    setState(() {
      activeScreen = questionScreenText;
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = resultScreenText;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    // Switch Screen
    if (activeScreen == stertScreenText) {
      screenWidget = StartScreen(switchScreen);
    } else if (activeScreen == questionScreenText) {
      screenWidget = QuestionScreen(onSelecteAnswer: chooseAnswer);
    } else if (activeScreen == resultScreenText) {
      screenWidget = ResultScreen(
        choosenAnswer: selectedAnswer,
        restartBtn: switchScreen,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
