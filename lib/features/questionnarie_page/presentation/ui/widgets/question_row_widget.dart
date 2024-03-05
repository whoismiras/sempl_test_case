import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sempl/core/config/theme.dart';

class QuestionRowWidget extends StatelessWidget {
  const QuestionRowWidget({
    super.key,
    required this.title,
    required this.isSelected,
    this.onSelected,
  });
  final String title;
  final Function()? onSelected;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: CupertinoButton(
        onPressed: onSelected,
        padding: EdgeInsets.zero,
        child: Row(
          children: [
            tickBuilder(),
            const SizedBox(width: 6),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  color: AppColors.black,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget tickBuilder() {
    if (isSelected) {
      return Container(
        width: 24,
        height: 24,
        padding: const EdgeInsets.all(3),
        decoration: const BoxDecoration(
          color: AppColors.blue,
          shape: BoxShape.circle,
        ),
      );
    }

    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: AppColors.black,
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
