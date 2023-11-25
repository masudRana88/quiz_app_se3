import 'package:quiz_app_se3/models/quiz_question.dart';

const questions = [
  QuizQuestion("What are the main building blocks of Flutter UIs?", [
    "Widgets",
    "Components",
    "Blocks",
    "Function",
  ]),
  QuizQuestion("How are Flutter UIs built?", [
    "By combinding widgets in code",
    "By combinding widgets in a visual editor",
    "By defining widets in config files"
        "By using XCode for iOS and Andorid Studio for Android"
  ]),
  QuizQuestion("Whats's the purpose of StatefullWidget?", [
    "Update UI as data change",
    "Update data as UI changes",
    "Ignore data changes",
    "Render UI that does not depend on data",
  ]),
  QuizQuestion(
    "Which widget should you try to use more often: StatelessWidget or Statefullwidget?",
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion('What happens if you change data in a StatelessWidget?', [
    'The UI is not updated',
    'The UI is updated',
    'The closest StatefulWidget is updated',
    'Any nested StatefulWidgets are updated',
  ]),
  QuizQuestion("How should you update data inside of StatefulWidgets?", [
    'By calling setState()',
    'By calling updateData()',
    'By calling updateUI()',
    'By calling updateState()',
  ])
];
