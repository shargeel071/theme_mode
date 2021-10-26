import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode  themeMode = ThemeMode.dark;

  void toggleTheme(bool isOn){
    print('isOn $isOn');
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  bool get isDarkMode =>themeMode == ThemeMode.dark;
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: ColorScheme.dark()
  );
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light()
  );

}