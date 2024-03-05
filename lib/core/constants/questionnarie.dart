import 'package:flutter/material.dart';

class QuestionnarieData {
  /// first question
  static List<DropDownSelectItem> firstCase(
    BuildContext context,
  ) {
    return const [
      DropDownSelectItem(
        indexOfKey: 0,
        title: 'Сладкий вкус',
      ),
      DropDownSelectItem(
        indexOfKey: 1,
        title: 'Уменьшает и предотвращает образование пятен',
      ),
      DropDownSelectItem(
        indexOfKey: 2,
        title: 'Держите дыхание свежим',
      ),
      DropDownSelectItem(
        indexOfKey: 3,
        title: 'Многофункциональный полоскание рта (например, Listerine Total Care)',
      ),
      DropDownSelectItem(
        indexOfKey: 4,
        title: 'Помогает поддерживать крепкие зубы и здоровые десны',
      ),
    ];
  }

  /// second question
  static final secondCase = [
    const DropDownSelectItem(
      indexOfKey: 0,
      title: r'Sweet Tase',
    ),
    const DropDownSelectItem(
      indexOfKey: 1,
      title: r'Reduces and prevents stain formation',
    ),
    const DropDownSelectItem(
      indexOfKey: 2,
      title: r'Keep your breath fresh',
    ),
    const DropDownSelectItem(
      indexOfKey: 2,
      title: r'Multifunctional',
    ),
  ];
}

class DropDownSelectItem {
  const DropDownSelectItem({
    required this.indexOfKey,
    this.title = '',
  });

  final String title;
  final int indexOfKey;
}
