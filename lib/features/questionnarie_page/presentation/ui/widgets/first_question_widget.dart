import 'package:flutter/material.dart';
import 'package:sempl/core/config/theme.dart';
import 'package:sempl/core/constants/questionnarie.dart';
import 'package:sempl/features/questionnarie_page/presentation/ui/widgets/question_row_widget.dart';

/// first question
class FirstQuestionWidget extends StatelessWidget {
  const FirstQuestionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final list = QuestionnarieData.firstCase(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Вопрос 1',
          style: TextStyle(
            color: AppColors.blue,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Text('Какую главную особенность вы ищете в ополаскивателе для рта?'),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: list.length,
            itemBuilder: (context, index) => QuestionRowWidget(
              onSelected: () {},
              title: list.elementAt(index).title,
              isSelected: false,
            ),
          ),
        ),
      ],
    );
  }
}
