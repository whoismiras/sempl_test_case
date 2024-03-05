import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sempl/core/config/theme.dart';

/// title widget for app bar
class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
    this.isFirst = false,
  });
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: isFirst ? null : () => Navigator.pop(context),
              icon: const Icon(
                Icons.keyboard_arrow_left_rounded,
                color: Colors.white,
                size: 30,
              ),
            ),
            Row(
              children: [
                Container(
                  height: 18,
                  padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.commonYellow,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    '50 БАЛЛОВ',
                    style: TextStyle(
                      fontSize: 9,
                      color: AppColors.pink,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(width: 3),
                CircleAvatar(
                  child: SvgPicture.asset(AppImage.icAvatar),
                ),
              ],
            ),
          ],
        ),
        const Text(
          'ПОПРОБУЙТЕ НОВОЕ СРЕДСТВО ДЛЯ ЧИСТКИ ЗУБОВ БЕСПЛАТНО',
          style: TextStyle(
            fontSize: 27,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
          maxLines: 3,
        ),
      ],
    );
  }
}
