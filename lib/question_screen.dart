import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("This is a questions...."),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(onPressed: () {}, child: const Text("Answer 1"))
      ],
    );
  }
}
