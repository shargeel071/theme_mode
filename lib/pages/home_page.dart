import 'package:flutter/material.dart';
import 'package:light_dark_theme/pages/widgets/change_theme_button_widget.dart';
import 'package:light_dark_theme/provider/theme_provider.dart';
import 'package:provider/provider.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
    final text = Provider.of<ThemeProvider>(context, listen: false).themeMode == ThemeMode.dark
    ? 'DarkTheme' : 'LightTheme';

    
    return Scaffold(
      appBar: AppBar(
        title: Text('ThemeMode'),
        actions: [
          ChangeThemeButtonWidget(),
        ],
      ),
      body: Center(child: Text('Hello $text !', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),)),
    );
  }
}
