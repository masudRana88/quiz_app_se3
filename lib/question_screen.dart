import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_se3/answer_button.dart';
import 'package:quiz_app_se3/data/questions.dart';

// Widget class

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({
    Key? key,
    required this.onSelecteAnswer,
  }) : super(key: key);

  final void Function(String answer) onSelecteAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

// State class

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQusitionIndex = 0;

  void answerTheQuestion(String answer) {
    widget.onSelecteAnswer(answer);
    setState(() {
      currentQusitionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQusitionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: GoogleFonts.lato(
                  fontSize: 22,
                  color: const Color.fromARGB(255, 234, 215, 255),
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswer().map(
                  (item) => AnswerButton(
                      answer: item,
                      onTap: () {
                        answerTheQuestion(item);
                      }),
                ), // AnswerButton
          ],
        ),
      ),
    );
  }
}
