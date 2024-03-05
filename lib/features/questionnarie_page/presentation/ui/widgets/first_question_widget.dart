import 'package:flutter/material.dart';
import 'package:sempl/core/config/theme.dart';

class FirstQuestionWidget extends StatelessWidget {
  const FirstQuestionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Вопрос 1',
          style: TextStyle(
            color: AppColors.blue,
          ),
        )
      ],
    );
  }
}
