import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_se3/data/questions.dart';
import 'package:quiz_app_se3/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.restartBtn, required this.choosenAnswer});

  final void Function() restartBtn;
  final List<String> choosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosenAnswer.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].question,
        "choosen_Answer": choosenAnswer[i],
        "right_Answer": questions[i].answer[0]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numOfQuestion = questions.length;

    final numOfCorretAns = summaryData.where((item) {
      return item["right_Answer"] == item["choosen_Answer"];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Your answer $numOfCorretAns out of $numOfQuestion question Correctly!",
            style: GoogleFonts.lato(
                fontSize: 22,
                color: const Color.fromARGB(255, 234, 215, 255),
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          QuestionSummary(summaryData),
          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 10,
                ),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: restartBtn,
              icon: const Icon(Icons.restart_alt_sharp),
              label: const Text("Restart Quiz"))
        ]),
      ),
    );
  }
}
