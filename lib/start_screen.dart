import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {Key? key}) : super(key: key);

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(160, 255, 255, 255),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            "Learn Flutter with fun!!",
            style: GoogleFonts.lato(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              // side: const BorderSide(
              //   color: Color.fromARGB(255, 229, 188, 188),
              // ),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            onPressed: startQuiz,
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
