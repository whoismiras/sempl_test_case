import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sempl/core/config/theme.dart';
import 'package:sempl/core/widgets/app_bar_space.dart';
import 'package:sempl/core/widgets/app_bar_title.dart';
import 'package:sempl/core/widgets/app_floating_button.dart';
import 'package:sempl/features/main_page/presentation/cubit/launch_page_cubit.dart';
import 'package:sempl/features/main_page/presentation/ui/widgets/check_box.dart';
import 'package:sempl/features/questionnarie_page/presentation/ui/questionnarie_page.dart';

/// start page for the application
class LaunchPage extends StatelessWidget {
  const LaunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LaunchPageCubit(),
      child: BlocBuilder<LaunchPageCubit, LaunchPageCommonState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              flexibleSpace: const AppBarSpace(),
              backgroundColor: AppColors.pink,
              toolbarHeight: 180,
              automaticallyImplyLeading: false,
              centerTitle: false,
              title: const AppBarTitle(isFirst: true),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 22),
              child: Column(
                children: [
                  const Text(AppText.firstPageText),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      CheckBoxWidget(
                        size: 21,
                        value: state.isButtonActive,
                        onChanged: (_) =>
                            context.read<LaunchPageCubit>().checkBox(!state.isButtonActive),
                        activeColor: AppColors.blue,
                        uncheckedColor: Colors.white,
                      ),
                      const SizedBox(width: 6),
                      const Text('Я принимаю'),
                    ],
                  ),
                ],
              ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            floatingActionButton: AppFloatingButtonWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const QuestionnariePage(),
                  ),
                );
              },
              text: 'CONTINUE',
              isActive: state.isButtonActive,
            ),
          );
        },
      ),
    );
  }
}
