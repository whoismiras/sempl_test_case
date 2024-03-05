import 'package:flutter/material.dart';
import 'package:sempl/core/config/theme.dart';
import 'package:sempl/core/constants/questionnarie.dart';
import 'package:sempl/features/questionnarie_page/presentation/ui/widgets/question_drop_down_widget.dart';

/// second question
class SecondQuestionWidget extends StatelessWidget {
  const SecondQuestionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Вопрос 2',
          style: TextStyle(
            color: AppColors.blue,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Text('Какую главную особенность вы ищете в ополаскивателе для рта?'),
        ),
        QuestionDropDownWidget(
          listItems: QuestionnarieData.secondCase,
        ),
      ],
    );
  }
}
