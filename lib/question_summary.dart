import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(
    this.summaryData, {
    super.key,
  });

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ...summaryData.map((data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor:
                        data["right_Answer"] == data["choosen_Answer"]
                            ? Color.fromARGB(228, 130, 159, 238)
                            : Color.fromARGB(211, 245, 131, 131),
                    maxRadius: 15,
                    child: Text(
                      ((data["question_index"] as int) + 1).toString(),
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data["question"] as String,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              fontSize: 18, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          // const Color.fromARGB(255, 29, 236, 36)
                          data["right_Answer"] as String,
                          style: const TextStyle(
                              color: Color.fromARGB(239, 218, 159, 245)),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          data["choosen_Answer"] as String,
                          style: TextStyle(
                              color:
                                  data["right_Answer"] == data["choosen_Answer"]
                                      ? const Color.fromARGB(255, 29, 236, 36)
                                      : const Color.fromARGB(255, 252, 73, 73)),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
