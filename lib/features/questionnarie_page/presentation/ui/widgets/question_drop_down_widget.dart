import 'package:flutter/material.dart';
import 'package:sempl/core/config/theme.dart';
import 'package:sempl/core/constants/questionnarie.dart';

class QuestionDropDownWidget extends StatelessWidget {
  const QuestionDropDownWidget({
    super.key,
    required this.listItems,
    this.onChanged,
    this.selectedValue,
    this.labelWidget,
  });

  final List<DropDownSelectItem> listItems;
  final Function(DropDownSelectItem)? onChanged;
  final DropDownSelectItem? selectedValue;
  final Widget? labelWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 6),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.lightGrey,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: AppDropDownSelector(
        listItems: listItems,
        onChanged: (v) => onChanged?.call(
          v ?? listItems.first,
        ),
        value: selectedValue,
        labelWidget: labelWidget,
      ),
    );
  }
}

class AppDropDownSelector extends StatelessWidget {
  const AppDropDownSelector({
    Key? key,
    this.onChanged,
    this.value,
    this.labelWidget,
    required this.listItems,
  }) : super(key: key);

  final DropDownSelectItem? value;
  final List<DropDownSelectItem> listItems;
  final Function(DropDownSelectItem?)? onChanged;

  /// виджет текстового поля
  final Widget? labelWidget;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButtonFormField<DropDownSelectItem>(
        items: listItems.map((DropDownSelectItem listData) {
          return DropdownMenuItem<DropDownSelectItem>(
            value: listData,
            child: Text(
              listData.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          );
        }).toList(),
        isExpanded: true,
        icon: const SizedBox(),
        onChanged: (v) => onChanged?.call(v),
        value: value,
        decoration: InputDecoration(
          label: labelWidget,
          isDense: true,
          suffixIcon: const Icon(
            Icons.keyboard_arrow_down_outlined,
            color: AppColors.blue,
          ),
          suffixIconConstraints: const BoxConstraints(
            maxWidth: 40,
          ),
          prefixIconConstraints: const BoxConstraints(
            maxWidth: 40,
          ),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}
