import 'package:flutter/material.dart';
import 'package:save_data_screen/first_page.dart';
import 'package:save_data_screen/second_page.dart';
import 'package:save_data_screen/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final ValueNotifier<ThemeMode> _notifier = ValueNotifier(ThemeMode.light);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      builder: ((context, themeMode, child) => MaterialApp(
            title: 'Shared preferences',
            theme: Themes.lightTheme,
            darkTheme: Themes.darkTheme,
            themeMode: themeMode,
            initialRoute: 'first_page',
            routes: {
              'first_page': (context) => FirstPage(_notifier),
              'second_page': (context) => SecondPage(),
            },
          )),
      valueListenable: _notifier,
    );
  }
}
