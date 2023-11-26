import 'package:flutter/material.dart';
import 'package:quiz_app_se3/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "This is a questions....",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answer: "Answer 1", onTap: () {}),
          AnswerButton(answer: "Answer 2", onTap: () {}),
          AnswerButton(answer: "Answer 3", onTap: () {}),
          AnswerButton(answer: "Answer 4", onTap: () {}),
        ],
      ),
    );
  }
}
