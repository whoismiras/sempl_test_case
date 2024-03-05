import 'package:flutter/material.dart';
import 'package:sempl/features/main_page/presentation/ui/launch_page.dart';

void main() {
  Widget screen = const LaunchPage();

  runApp(
    SemplTestApp(screen: screen),
  );
}

class SemplTestApp extends StatelessWidget {
  const SemplTestApp({
    super.key,
    required this.screen,
  });

  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen,
    );
  }
}
