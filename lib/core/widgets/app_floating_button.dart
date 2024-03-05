import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sempl/core/config/theme.dart';
import 'package:sempl/features/questionnarie_page/presentation/ui/questionnarie_page.dart';

/// bottom button
class AppFloatingButtonWidget extends StatelessWidget {
  const AppFloatingButtonWidget({
    super.key,
    required this.text,
    required this.isActive,
    required this.onTap,
  });

  final String text;
  final bool isActive;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.center,
      height: 56,
      decoration: BoxDecoration(
        color: isActive ? AppColors.blue : AppColors.lightGrey,
        borderRadius: BorderRadius.circular(25),
      ),
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: isActive ? onTap : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            const Icon(
              Icons.arrow_right_alt_sharp,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
