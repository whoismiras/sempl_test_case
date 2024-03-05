import 'package:flutter/material.dart';
import 'package:sempl/core/config/theme.dart';

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({
    super.key,
    required this.value,
    required this.onChanged,
    this.uncheckedWidget,
    this.activeColor,
    this.uncheckedColor,
    this.size,
  });
  final bool value;
  final Widget? uncheckedWidget;
  final Color? activeColor;
  final Color? uncheckedColor;
  final double? size;
  final Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: GestureDetector(
        onTap: () => onChanged(!value),
        child: AnimatedContainer(
          duration: const Duration(microseconds: 500),
          height: size,
          width: size,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: value ? activeColor : uncheckedColor,
            border: !value
                ? Border.all(
                    width: 1.5,
                    color: AppColors.lightGrey,
                  )
                : null,
            shape: BoxShape.rectangle,
          ),
          child: value
              ? Icon(
                  Icons.check,
                  color: Colors.white,
                  size: size! * 0.5,
                )
              : uncheckedWidget,
        ),
      ),
    );
  }
}
