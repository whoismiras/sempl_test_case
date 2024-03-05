import 'package:flutter/material.dart';
import 'package:sempl/core/config/theme.dart';
import 'package:sempl/core/widgets/app_bar_space.dart';
import 'package:sempl/core/widgets/app_bar_title.dart';
import 'package:sempl/core/widgets/app_floating_button.dart';
import 'package:sempl/features/questionnarie_page/presentation/ui/widgets/first_question_widget.dart';
import 'package:sempl/features/questionnarie_page/presentation/ui/widgets/second_question_widget.dart';

/// questionnarie.dart second page
///
class QuestionnariePage extends StatelessWidget {
  const QuestionnariePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: const AppBarSpace(),
        backgroundColor: AppColors.pink,
        toolbarHeight: 180,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const AppBarTitle(),
      ),
      body: const SingleChildScrollView(
        clipBehavior: Clip.none,
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Для получения образца заполните анкету из нескольких вопросов'),
              SizedBox(height: 20),
              FirstQuestionWidget(),
              SecondQuestionWidget(),
              SizedBox(height: 20),
              SecondQuestionWidget(),
              SizedBox(height: 200),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: AppFloatingButtonWidget(
        onTap: () {},
        text: 'RECEIVE THE GOODS',
        isActive: true,
      ),
    );
  }
}
